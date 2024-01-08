import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ideal_store/features/products/products_controller.dart';
import 'package:ideal_store/features/settings/settings.dart';
import 'package:ideal_store/features/shared/utils.dart';

import '../../main.dart';
part 'product.freezed.dart';
part 'product.g.dart';

enum Brand {
  urideal('URideal'),
  chinese('Chinese'),
  pakistani('Pakistani');

  const Brand(this.description);
  final String description;
}

@freezed
class Product with _$Product {
  const factory Product.raw({
    required final String productID,
    @Default('') final String name,
    @Default('') final String model,
    @Default(Brand.pakistani) final Brand brand,
    @Default(0) final int stock,
    required final String image,
    @Default(false) final bool editing,
    @Default(Colors.blue)
    @MaterialColorConverter()
    final MaterialColor materialColor,
    @Default(0) final int price,
  }) = _Product;
  factory Product() => Product.raw(productID: randomID, image: defaultImage);
  factory Product.id(productID) => getProductByID(productID);
  factory Product.fromJson(json) => _$ProductFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @Default(<String, Product>{}) final Map<String, Product> cache,
  }) = _Products;

  factory Products.fromJson(json) => _$ProductsFromJson(json);
}
