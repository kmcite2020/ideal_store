import 'package:isar/isar.dart';

import '../domain/domain.dart';
import '../main.dart';

final CustomersRepository customerRepository = CustomersRepository();

class CustomersRepository {
  Stream<List<Customer>> get customers {
    return isar.customers.where().watch(
          fireImmediately: true,
        );
  }

  Customer? id(Id id) => isar.customers.getSync(id);
  Future<void> setCustomer(Customer customer) {
    return isar.writeTxn(
      () => isar.customers.put(customer),
    );
  }

  Future<void> deleteCustomer(int customerId) {
    return isar.writeTxn(
      () => isar.customers.delete(customerId),
    );
  }

  Future<void> clearCustomers() {
    return isar.writeTxn(
      () => isar.customers.clear(),
    );
  }
}
