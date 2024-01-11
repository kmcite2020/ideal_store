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

  factory Customer.id(String custmerID) => customersRM().cache[custmerID]!;
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

final customersRM = RM.persistent<Customers>(
  () => const Customers(),
  key: 'customers',
  fromJson: Customers.fromJson,
);

List<Customer> get customers => customersRM().cache.values.toList();

set customersState(Customers _) => customersRM(_);
Customer getCustomerByID(String id) => customersRM().cache[id]!;

void setCustomer(Customer customer) {
  customersRM(
    customersRM().copyWith(
      cache: Map.of(customersRM().cache)..[customer.customerID] = customer,
    ),
  );
}

void removeCustomer(String customerID) {
  customersRM(
    customersRM().copyWith(
      cache: Map.of(customersRM().cache)..remove(customerID),
    ),
  );
}

void clearCustomers() {
  customersState = Customers();
}
