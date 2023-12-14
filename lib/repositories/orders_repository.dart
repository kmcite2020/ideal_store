import 'package:isar/isar.dart';

import '../domain/domain.dart';
import '../main.dart';

final OrdersRepository ordersRepository = OrdersRepository();

class OrdersRepository {
  Stream<List<Order>> orders() => isar.orders.where().watch();
  Stream<Order?> sid(Id id) =>
      isar.orders.watchObject(id, fireImmediately: true);
  Future<Order?> fid(Id id) => isar.txn(() => isar.orders.get(id));

  Future<void> setOrder(Order order) {
    return isar.writeTxn(() => isar.orders.put(order));
  }

  Future<void> deleteOrder(Order order) async {
    return isar.writeTxn(() => isar.orders.delete(order.id));
  }

  Future<void> clearOrders() async {
    return isar.writeTxn(() => isar.orders.clear());
  }
}
