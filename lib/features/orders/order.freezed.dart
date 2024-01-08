// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get orderID => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  DateTime? get createdOn => throw _privateConstructorUsedError;
  String? get customer => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String orderID,
      bool editing,
      OrderStatus orderStatus,
      DateTime? createdOn,
      String? customer,
      List<String> products});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderID = null,
    Object? editing = null,
    Object? orderStatus = null,
    Object? createdOn = freezed,
    Object? customer = freezed,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      orderID: null == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderID,
      bool editing,
      OrderStatus orderStatus,
      DateTime? createdOn,
      String? customer,
      List<String> products});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderID = null,
    Object? editing = null,
    Object? orderStatus = null,
    Object? createdOn = freezed,
    Object? customer = freezed,
    Object? products = null,
  }) {
    return _then(_$OrderImpl(
      orderID: null == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {this.orderID = '',
      this.editing = true,
      this.orderStatus = OrderStatus.ordered,
      this.createdOn,
      this.customer,
      final List<String> products = const <String>[]})
      : _products = products;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  @JsonKey()
  final String orderID;
  @override
  @JsonKey()
  final bool editing;
  @override
  @JsonKey()
  final OrderStatus orderStatus;
  @override
  final DateTime? createdOn;
  @override
  final String? customer;
  final List<String> _products;
  @override
  @JsonKey()
  List<String> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Order(orderID: $orderID, editing: $editing, orderStatus: $orderStatus, createdOn: $createdOn, customer: $customer, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.orderID, orderID) || other.orderID == orderID) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderID, editing, orderStatus,
      createdOn, customer, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {final String orderID,
      final bool editing,
      final OrderStatus orderStatus,
      final DateTime? createdOn,
      final String? customer,
      final List<String> products}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get orderID;
  @override
  bool get editing;
  @override
  OrderStatus get orderStatus;
  @override
  DateTime? get createdOn;
  @override
  String? get customer;
  @override
  List<String> get products;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
mixin _$Orders {
  Map<String, Order> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call({Map<String, Order> cache});
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res, $Val extends Orders>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersImplCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$OrdersImplCopyWith(
          _$OrdersImpl value, $Res Function(_$OrdersImpl) then) =
      __$$OrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Order> cache});
}

/// @nodoc
class __$$OrdersImplCopyWithImpl<$Res>
    extends _$OrdersCopyWithImpl<$Res, _$OrdersImpl>
    implements _$$OrdersImplCopyWith<$Res> {
  __$$OrdersImplCopyWithImpl(
      _$OrdersImpl _value, $Res Function(_$OrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$OrdersImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Order>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersImpl implements _Orders {
  const _$OrdersImpl({final Map<String, Order> cache = const <String, Order>{}})
      : _cache = cache;

  factory _$OrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersImplFromJson(json);

  final Map<String, Order> _cache;
  @override
  @JsonKey()
  Map<String, Order> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'Orders(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersImplToJson(
      this,
    );
  }
}

abstract class _Orders implements Orders {
  const factory _Orders({final Map<String, Order> cache}) = _$OrdersImpl;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$OrdersImpl.fromJson;

  @override
  Map<String, Order> get cache;
  @override
  @JsonKey(ignore: true)
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
