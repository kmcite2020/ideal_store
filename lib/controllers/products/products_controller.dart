import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/domain.dart';
import '../../repositories/products_repository.dart';
import '../../shared/theme_manager.dart';
import '../../shared/utils.dart';

final productsController = ProductsController();

class ProductsController {
  final productsRM = RM.injectStream(
    () => productsRepository.products(),
    initialState: <Product>[],
  );

  List<Product> get products => productsRM.state;
  void setProduct(Product product) {
    productsRepository.setProduct(product);
  }

  void setProductName(String name, Product productModel) {
    setProduct(productModel..name = name);
  }

  void setProductModel(String model, Product productModel) {
    setProduct(productModel..model = model);
  }

  void setProductBrand(Brand brand, Product productModel) {
    setProduct(productModel..brand = brand);
  }

  void setProductStock(int stock, Product productModel) {
    setProduct(productModel..stock = stock);
  }

  void setProductImage(String image, Product productModel) {
    setProduct(productModel..image = image);
  }

  void setProductEditing(bool editing, Product productModel) {
    setProduct(productModel..editing = editing);
  }

  void setProductPrice(int price, Product productModel) {
    setProduct(productModel..price = price);
  }

  void setProductColor(MaterialColor materialColor, Product productModel) {
    setProduct(productModel..materialColor = materialColor);
  }

  void removeProduct(Id id) => productsRepository.deleteProduct(id);
  void clearProducts() => productsRepository.clearProducts();

  Future<String?> filePicker() async {
    FilePickerResult? filePickerResult = await FilePicker.platform.pickFiles(
      dialogTitle: 'Select Image for Product',
      type: FileType.custom,
      allowedExtensions: [
        'jpg',
        'png',
      ],
    );
    if (filePickerResult != null) {
      final imageFile = filePickerResult.files.first;
      return base64Encode(imageFile.bytes!);
    } else {
      return null;
    }
  }

  String get currentWorth {
    late String worth;
    double temp = productsController.products.fold(0.0, (previousValue, element) => previousValue + (element.stock * element.price));

    if (temp <= 1000) {
      worth = (temp / 1000).round().toString();
    } else if (temp > 1000 && temp <= 1000000) {
      worth = "${(temp / 1000).toStringAsExponential(3).substring(0, 5)} K";
    } else if (temp > 1000000 && temp <= 1000000000) {
      worth = "${(temp / 1000000).toStringAsExponential(3).substring(0, 5)} M";
    } else if (temp > 1000000000) {
      worth = "${(temp / 1000000000).toStringAsExponential(3).substring(0, 5)} B";
    }
    return worth;
  }

  Product? id(int id) => productsRepository.id(id);
  Stream<Product?> sid(Id id) => productsRepository.sid(id);

  late final addProductForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      // final product = ProductModel(
      //   name: nameOfProduct.value,
      //   model: modelOfProduct.value,
      //   brand: brandOfProduct.value,
      //   materialColor: colorOfProduct.value,
      //   price: priceOfProduct.value,
      //   stock: stockOfProduct.value,
      //   image: imageOfProduct.value,
      // );
      // productsController.addProduct(product);
    },
  );
  final imageOfProduct = RM.injectFormField<String>(
    defaultImage,
    validators: [
      (image) {
        if (image == defaultImage) {
          return 'please add an image';
        }
        return null;
      }
    ],
  );

  final nameOfProduct = RM.injectTextEditing(
    validators: [
      (text) {
        if (text!.length < 6) {
          return 'should contain at least 6 characters';
        }
        return null;
      }
    ],
  );
  final modelOfProduct = RM.injectTextEditing(
    validators: [
      (text) {
        if (text!.length < 6) {
          return 'should contain at least 6 characters';
        }
        return null;
      }
    ],
  );
  final colorOfProduct = RM.injectFormField<MaterialColor>(ThemeManager.colors.first);
  final brandOfProduct = RM.injectFormField<Brand>(Brand.values.first);
  final priceOfProduct = RM.injectFormField<double>(
    0,
    validators: [
      (value) {
        if (value == 0.0) return 'should have a price';
        return null;
      }
    ],
  );
  final stockOfProduct = RM.injectFormField<int>(
    0,
    validators: [
      (value) {
        if (value < 1) return 'should have at least 1 item in stock';
        return null;
      }
    ],
  );
}
