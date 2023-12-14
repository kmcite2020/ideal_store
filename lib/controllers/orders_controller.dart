import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../domain/domain.dart';
import '../repositories/orders_repository.dart';

class OrdersController {
  final ordersRM = RM.injectStream(ordersRepository.orders);
  List<Order> orders() => ordersRM.state;
  void setOrder(Order order) => ordersRepository.setOrder(order);
  void deleteOrder(Order order) => ordersRepository.deleteOrder(order);
  void clearOrders() => ordersRepository.clearOrders();
  Future<Order?> id(Id id) => ordersRepository.fid(id);
  Stream<Order?> sid(Id id) => ordersRepository.sid(id);
}
