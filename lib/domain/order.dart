part of 'domain.dart';

enum OrderStatus {
  ordered,
  delivering,
  complete;
}

@collection
class Order {
  Id id = Isar.autoIncrement;
  bool isEditing = false;
  DateTime createdOn = DateTime.now();
  @enumerated
  OrderStatus orderStatus = OrderStatus.ordered;
  final customer = IsarLink<Customer>();
  final products = IsarLinks<Product>();
}
