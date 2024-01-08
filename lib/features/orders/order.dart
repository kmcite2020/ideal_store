import 'package:freezed_annotation/freezed_annotation.dart';
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
}

final ordersRM = RM.inject(
  () => Orders(),
  persist: () => PersistState(
    key: 'orders',
    fromJson: (json) => Orders.fromJson(jsonDecode(json)),
    toJson: (s) => jsonEncode(s.toJson()),
  ),
);

@freezed
class Orders with _$Orders {
  const factory Orders({
    @Default(<String, Order>{}) final Map<String, Order> cache,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}

List<Order> get orders => ordersState.cache.values.toList();
Orders get ordersState => ordersRM.state;
set ordersState(Orders _) => ordersRM.state = _;

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
