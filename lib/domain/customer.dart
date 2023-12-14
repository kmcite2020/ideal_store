part of 'domain.dart';

@collection
class Customer {
  Id id = Isar.autoIncrement;
  String name = '';
  String city = '';
  bool editing = false;
  final products = IsarLinks<Product>();
}
