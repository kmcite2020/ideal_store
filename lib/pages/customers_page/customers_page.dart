import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../controllers/customers/customers_controller.dart';
import '../../controllers/products/products_controller.dart';
import '../../domain/domain.dart';
import '../../shared/extensions.dart';
import '../../shared/router.dart';
import '../../shared/utils.dart';
import '../products/product_page.dart';

class CustomersPage extends ReactiveStatelessWidget {
  static const path = '/customers';
  const CustomersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'CUSTOMERS'.text(),
        actions: [
          BackButton(),
          SizedBox(width: 5),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'press to enable adding customers',
        child: const Icon(Icons.add_reaction),
        onPressed: () {
          customersController.setCustomer(Customer());
        },
      ).pad(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              customersController.customers.isEmpty
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        emptyListInfoCustomer,
                        textScaleFactor: 2.3,
                      ),
                    )
                  : const SizedBox(),
              ...customersController.customers.map(
                (e) {
                  return CustomerView(id: e.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerView extends ReactiveStatelessWidget {
  const CustomerView({
    super.key,
    required this.id,
  });
  final int id;
  @override
  Widget build(BuildContext context) {
    final Customer? customer = customersController.getCustomerByID(id);
    if (customer == null) {
      return CircularProgressIndicator().pad();
    }
    customer.products.loadSync();
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (customer.editing)
            TextFormField(
              initialValue: customer.name,
              onFieldSubmitted: (value) {
                customersController.setCustomerName(value, customer);
              },
              decoration: InputDecoration(labelText: 'Name'),
            ).pad()
          else
            Wrap(
              children: [
                Icon(Icons.people),
                SizedBox(width: 5),
                customer.name.text(),
              ],
            ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customer.editing
              ? TextFormField(
                  initialValue: customer.city,
                  onFieldSubmitted: (value) {
                    customersController.setCustomerCity(value, customer);
                  },
                  decoration: InputDecoration(labelText: 'City'),
                ).pad()
              : Wrap(
                  children: [
                    Icon(Icons.location_city),
                    SizedBox(width: 5),
                    customer.city.text(),
                  ],
                ),
          Wrap(
            children: [
              Icon(Icons.production_quantity_limits),
              SizedBox(width: 5),
              'Products'.text(),
            ],
          ),
          Wrap(
            children: customer.products
                .map(
                  (productModel) => SizedBox(
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        router.to(ProductPage.path, arguments: productModel);
                      },
                      child: productModel.id.text(),
                      onLongPress: () {
                        customersController.removeProductFromCustomer(
                            productModel, customer);
                      },
                    ).pad(),
                  ),
                )
                .toList(),
          ),
          Row(
            children: [
              if (!customer.editing)
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    customersController.deleteCustomer(customer.id);
                  },
                ),
              if (!customer.editing)
                IconButton(
                  onPressed: () {
                    customersController.setCustomerEditing(true, customer);
                  },
                  icon: Icon(Icons.edit_document),
                ),
              if (customer.editing)
                IconButton(
                  icon: const Icon(Icons.done),
                  onPressed: () {
                    customersController.setCustomerEditing(false, customer);
                  },
                ),
              PopupMenuButton<Product>(
                initialValue: productsController.products.firstOrNull,
                icon: Icon(Icons.store),
                itemBuilder: (x) => productsController.products
                    .map(
                      (e) => PopupMenuItem<Product>(
                        value: e,
                        child: e.text(),
                      ),
                    )
                    .toList(),
                onSelected: (product) {
                  print(product);
                  customersController.addProductToCustomer(product, customer);
                },
              ),
              CircleAvatar(
                child: customer.products.length.text(),
              )
            ],
          ),
        ],
      ),
    ).pad();
  }
}
