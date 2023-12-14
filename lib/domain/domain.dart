// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../repositories/products_repository.dart';

part 'customer.dart';
part 'domain.g.dart';
part 'order.dart';
part 'product.dart';
part 'settings.dart';

@collection
class Domain {
  Id id = 0;
  Configuration configuration = Configuration();
}
