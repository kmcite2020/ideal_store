import 'package:ideal_store/main.dart';
part 'order.freezed.dart';
part 'order.g.dart';

enum OrderStatus {
  ordered,
  delivering,
  complete;
}

@freezed
class Order with _$Order {
  const factory Order({
    @Default('') final String orderID,
    @Default(true) final bool editing,
    @Default(OrderStatus.ordered) final OrderStatus orderStatus,
    final DateTime? createdOn,
    final String? customer,
    @Default(<String>[]) final List<String> products,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  factory Order.id(String orderID) => ordersRM().cache[orderID]!;
}

final ordersRM = RM.persistent(
  () => Orders(),
  key: 'orders',
  fromJson: Orders.fromJson,
);

@freezed
class Orders with _$Orders {
  const factory Orders({
    @Default(<String, Order>{}) final Map<String, Order> cache,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}

List<Order> get orders => ordersState.cache.values.toList();
Orders get ordersState => ordersRM();
set ordersState(Orders _) => ordersRM(_);

void setOrder(Order order) {
  ordersState = ordersState.copyWith(
    cache: Map.of(ordersState.cache)..[order.orderID] = order,
  );
}

void removeOrder(String orderID) {
  ordersState = ordersState.copyWith(
    cache: Map.of(ordersState.cache)..remove(orderID),
  );
}
