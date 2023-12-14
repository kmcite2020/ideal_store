import 'dart:convert';

import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../shared/extensions.dart';
import '../../controllers/products/products_controller.dart';
import '../../controllers/settings_controller.dart';
import '../../domain/domain.dart';
import '../../repositories/products_repository.dart';
import '../../shared/router.dart';

class ProductPage extends StatelessWidget {
  static const path = '/product';
  final int id;
  const ProductPage(this.id, {super.key});
  @override
  Widget build(BuildContext context) {
    print(id);
    return StreamBuilder(
      stream: productsController.sid(id),
      initialData: productsController.id(id),
      builder: (context, asyncSnapshotProduct) {
        if (asyncSnapshotProduct.hasData) {
          if (asyncSnapshotProduct.data != null) {
            final Product product = asyncSnapshotProduct.data!;
            return Scaffold(
              body: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BackButton(),
                        Container(
                          decoration: BoxDecoration(
                            color: product.materialColor,
                            borderRadius: BorderRadius.circular(
                                settingsController.borderRadius),
                          ),
                          child: const Text("PRODUCT DETAILS").pad(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: product.materialColor,
                      borderRadius: BorderRadius.circular(
                          settingsController.borderRadius),
                    ),
                    child: product.id.text().center().pad(),
                  ).pad(),
                  (product.editing
                          ? TextFormField(
                              initialValue: product.name,
                              onChanged: (name) {
                                productsController.setProductName(
                                    name, product);
                              },
                            )
                          : product.name.text(textScaleFactor: 3))
                      .pad(),
                  (product.editing
                          ? TextFormField(
                              initialValue: product.model,
                              onChanged: (model) {
                                productsController.setProductModel(
                                    model, product);
                              },
                            )
                          : product.model.text(textScaleFactor: 2))
                      .pad(),
                  (product.editing
                          ? DropdownButtonFormField(
                              value: product.brand,
                              items: Brand.values
                                  .map(
                                    (e) => DropdownMenuItem(
                                      child: e.description.text(),
                                      value: e,
                                    ),
                                  )
                                  .toList(),
                              onChanged: (brand) {
                                productsController.setProductBrand(
                                  brand!,
                                  product,
                                );
                              },
                            )
                          : product.brand.description.text())
                      .pad(),
                  (product.editing
                          ? DropdownButtonFormField(
                              value: product.materialColor,
                              items: Colors.primaries
                                  .map(
                                    (e) => DropdownMenuItem(
                                      child: e.colorName.text(),
                                      value: e,
                                    ),
                                  )
                                  .toList(),
                              onChanged: (materialColor) {
                                productsController.setProductColor(
                                  materialColor!,
                                  product,
                                );
                              },
                            )
                          : product.materialColor.colorName.text())
                      .pad(),
                  (product.editing
                          ? ElevatedButton(
                              onPressed: () async {
                                final image =
                                    await productsController.filePicker();
                                if (image == null) {
                                  router.scaffold.showSnackBar(
                                    SnackBar(
                                      content: 'Image not selected'
                                          .text()
                                          .pad()
                                          .center(),
                                      duration: 1.seconds,
                                      padding: EdgeInsets.all(8),
                                      behavior: SnackBarBehavior.floating,
                                      margin: EdgeInsets.all(8),
                                    ),
                                  );
                                  return;
                                }
                                productsController.setProductImage(
                                    image, product);
                              },
                              child: 'Pick Image'.text(),
                            )
                          : product.image == ''
                              ? 'Image not found.'.text()
                              : Card(
                                  child:
                                      Image.memory(base64Decode(product.image))
                                          .pad(),
                                ))
                      .pad(),
                  (product.editing
                          ? Slider(
                              min: 0,
                              max: 99999,
                              divisions: 99999,
                              value: product.price.toDouble(),
                              onChanged: (price) {
                                productsController.setProductPrice(
                                    price.toInt(), product);
                              },
                              label: product.price.toStringAsFixed(0),
                            )
                          : product.price.text())
                      .pad(),
                  (product.editing
                          ? Slider(
                              min: 0,
                              max: 500,
                              divisions: 500,
                              value: product.stock.toDouble(),
                              onChanged: (x) {
                                productsController.setProductStock(
                                    x.toInt(), product);
                              },
                            )
                          : product.stock.text())
                      .pad(),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  productsController.setProductEditing(
                      !product.editing, product);
                },
                child: Icon(product.editing ? Icons.done : Icons.edit),
              ),
            );
          }
        }
        return CircularProgressIndicator();
      },
    );
  }
}
