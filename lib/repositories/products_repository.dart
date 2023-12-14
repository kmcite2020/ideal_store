// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:async';

import 'package:isar/isar.dart';

import '../domain/domain.dart';
import '../main.dart';

enum Brand {
  urideal('URideal'),
  chinese('Chinese'),
  pakistani('Pakistani');

  const Brand(this.description);
  final String description;
}

final productsRepository = ProductsRepository();

class ProductsRepository {
  Stream<List<Product>> products() {
    return isar.products.where().watch(
          fireImmediately: true,
        );
  }

  Stream<Product?> sid(Id id) {
    return isar.products.watchObject(id, fireImmediately: true);
  }

  Product? id(Id id) => isar.products.getSync(id);

  Future<void> setProduct(Product product) {
    return isar.writeTxn(
      () => isar.products.put(
        product,
      ),
    );
  }

  Future<void> deleteProduct(int productId) {
    return isar.writeTxn(
      () => isar.products.delete(
        productId,
      ),
    );
  }

  Future<void> clearProducts() {
    return isar.writeTxn(
      () => isar.products.clear(),
    );
  }
}
