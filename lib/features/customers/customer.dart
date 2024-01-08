import 'package:ideal_store/features/shared/cities.dart';

import '../../main.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer.raw({
    required final String customerID,
    @Default('') final String name,
    required final String city,
    @Default(false) final bool editing,
    @Default(<String>[]) final List<String> products,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  factory Customer.id(String custmerID) => getCustomerByID(custmerID);
  factory Customer() => Customer.raw(
        customerID: randomID,
        city: cities.first,
      );
}

@freezed
class Customers with _$Customers {
  const factory Customers({
    @Default(<String, Customer>{}) final Map<String, Customer> cache,
  }) = _Customers;

  factory Customers.fromJson(Map<String, dynamic> json) =>
      _$CustomersFromJson(json);
}

final customersRM = RM.inject(
  () => const Customers(),
  persist: () => PersistState(
    key: 'customers',
    fromJson: (json) => Customers.fromJson(jsonDecode(json)),
    toJson: (s) => jsonEncode(s.toJson()),
  ),
);

List<Customer> get customers => customersState.cache.values.toList();

Customers get customersState => customersRM.state;
set customersState(Customers _) => customersRM.state = _;
Customer getCustomerByID(String id) => customersState.cache[id]!;

void setCustomer(Customer customer) {
  customersState = customersState.copyWith(
    cache: Map.of(customersState.cache)..[customer.customerID] = customer,
  );
}

void removeCustomer(String customerID) {
  customersState = customersState.copyWith(
    cache: Map.of(customersState.cache)..remove(customerID),
  );
}

void clearCustomers() {
  customersState = Customers();
}
