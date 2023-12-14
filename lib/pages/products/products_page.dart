import 'dart:convert';

import 'package:colornames/colornames.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:ideal_store/shared/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../controllers/products/products_controller.dart';
import '../../controllers/settings_controller.dart';
import '../../domain/domain.dart';
import '../../repositories/products_repository.dart';
import '../../shared/router.dart';
import '../../shared/theme_manager.dart';
import '../../shared/utils.dart';

class ProductsPage extends ReactiveStatelessWidget {
  static const path = '/products';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('PRODUCTS'),
        actions: [
          IconButton(
            tooltip: 'Back to Dashboard',
            onPressed: () => router.back(),
            icon: Icon(
              Icons.dashboard,
            ),
          ).pad(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              if (productsController.products.isEmpty)
                emptyListInfoProduct
                    .text(
                      textScaleFactor: 2,
                    )
                    .pad(),
              ...productsController.products.map(
                (eachProduct) => ProductUI(
                  id: eachProduct.id,
                  size: size,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: randomID,
        tooltip: 'add product',
        onPressed: () {
          productsController.setProduct(Product()..image = defaultImage);
        },
        child: Icon(Icons.add_shopping_cart),
      ).pad(),
    );
  }
}

class ProductUI extends ReactiveStatelessWidget {
  const ProductUI({
    super.key,
    required this.id,
    required this.size,
  });

  final int id;
  final Size size;

  @override
  Widget build(BuildContext context) {
    final Product? product = productsController.id(id);
    if (product == null) {
      return CircularProgressIndicator().pad();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          tileColor: product.materialColor,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              product.editing
                  ? TextFormField(
                      initialValue: product.name,
                      decoration: InputDecoration(
                        labelText: 'Product Name',
                      ),
                      onFieldSubmitted: (value) {
                        productsController.setProductName(value, product);
                        productsController.setProductEditing(false, product);
                      },
                    ).pad()
                  : product.name.text().pad(),
              product.editing
                  ? DropdownButtonFormField(
                      value: product.brand,
                      decoration: InputDecoration(
                        labelText: 'Brand',
                      ),
                      items: Brand.values
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: e.description.text(),
                            ),
                          )
                          .toList(),
                      onChanged: (_) =>
                          productsController.setProductBrand(_!, product),
                    ).pad()
                  : product.brand.description.text(),
              product.editing
                  ? DropdownButtonFormField(
                      value: product.materialColor,
                      items: Colors.primaries
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: e.colorName.text(),
                            ),
                          )
                          .toList(),
                      onChanged: (_) =>
                          productsController.setProductColor(_!, product),
                      decoration: InputDecoration(
                        labelText: 'Material Color',
                      ),
                    ).pad()
                  : product.materialColor.colorName.text(),
              product.editing
                  ? TextFormField(
                      initialValue: product.model,
                      onFieldSubmitted: (value) {
                        productsController.setProductModel(
                          value,
                          product,
                        );
                        productsController.setProductEditing(false, product);
                      },
                      decoration: InputDecoration(labelText: 'Model'),
                    ).pad()
                  : product.model.text(),
              product.editing
                  ? TextFormField(
                      initialValue: product.price.floor().toString(),
                      onFieldSubmitted: (value) {
                        final x = double.tryParse(value);
                        productsController.setProductPrice(x!.toInt(), product);
                        productsController.setProductEditing(false, product);
                      },
                      decoration: InputDecoration(labelText: 'Price'),
                    ).pad()
                  : product.price.floor().text(textScaleFactor: 2),
            ],
          ),
          trailing: IconButton(
            tooltip: 'edit product',
            onPressed: () {
              productsController.setProductEditing(!product.editing, product);
            },
            icon: Icon(Icons.edit_document),
          ),
          subtitle: Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.width / 2,
                child: product.editing
                    ? ElevatedButton(
                        onPressed: () async {
                          final filePickerResult =
                              await FilePicker.platform.pickFiles(
                            withData: true,
                            allowedExtensions: ['jpg', 'png'],
                            type: FileType.custom,
                          );
                          if (filePickerResult == null) {
                            return;
                          }
                          final image = filePickerResult.files.first;
                          if (image.bytes == null) {
                            return;
                          }
                          final str = base64Encode(image.bytes!);
                          productsController.setProductImage(str, product);
                          productsController.setProductEditing(false, product);
                        },
                        child: 'Pick Image'.text(),
                      ).pad()
                    : product.image == ''
                        ? 'X'.text(textScaleFactor: 4).pad().center()
                        : Image.memory(
                            base64Decode(product.image),
                            fit: BoxFit.fill,
                          ).clipRadius().pad(),
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      ThemeManager.borderRadius,
                    ),
                    child: LinearProgressIndicator(
                      minHeight: 40,
                      value: product.stock / 500,
                    ),
                  ),
                  Center(
                    child: "${product.stock}/500".text(
                      textScaleFactor: 2,
                      style: TextStyle(
                        color: settingsController.materialColor.shade800,
                      ),
                    ),
                  )
                ],
              ).pad(),
              if (product.editing)
                Slider(
                  value: product.stock.toDouble(),
                  onChanged: (onChanged) {
                    productsController.setProductStock(
                        onChanged.toInt(), product);
                  },
                  min: 0,
                  max: 500,
                )
            ],
          ),
        ).pad().clipRadius().pad(),
      ],
    );
  }
}
