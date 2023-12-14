import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/domain.dart';
import '../../main.dart';
import '../../repositories/customers_repository.dart';
import '../../shared/cities.dart';

final customersController = CustomersController();

class CustomersController {
  final customersRM = RM.injectStream(
    () => customerRepository.customers,
    initialState: <Customer>[],
  );

  List<Customer> get customers => customersRM.state;

  Customer? getCustomerByID(int id) => customerRepository.id(id);

  void setCustomer(Customer customer) async =>
      await customerRepository.setCustomer(customer);
  void setCustomerName(String name, Customer customer) => setCustomer(
        customer..name = name,
      );
  void setCustomerCity(String city, Customer customer) => setCustomer(
        customer..city = city,
      );
  void setCustomerEditing(bool editing, Customer customer) => setCustomer(
        customer..editing = editing,
      );
  void addProductToCustomer(Product product, Customer customer) {
    setCustomer(() {
      customer.products.add(product);
      isar.writeTxn(() => customer.products.save());
      return customer;
    }());
  }

  void removeProductFromCustomer(Product product, Customer customer) {
    setCustomer(() {
      customer.products.remove(product);
      isar.writeTxn(() => customer.products.save());
      return customer;
    }());
  }

  void deleteCustomer(int customerId) =>
      customerRepository.deleteCustomer(customerId);
  void clearCustomers() => customerRepository.clearCustomers();

  late final addCustomerForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      // customersController.addCustomer(
      //   CustomerModel(
      //     name: name.value,
      //     city: city.value,
      //   ),
      // );
    },
  );

  final city = RM.injectFormField<String>(cities.first);
  final name = RM.injectTextEditing(
    validators: [
      (text) {
        if (text!.isEmpty) {
          return 'name should be at least 6 characters long';
        } else {
          return null;
        }
      }
    ],
  );
}
