import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../controllers/customers/customers_controller.dart';
import '../../shared/extensions.dart';

class CustomerPage extends ReactiveStatelessWidget {
  static const path = '/customer';
  final int id;
  const CustomerPage(this.id, {super.key});
  @override
  Widget build(BuildContext context) {
    final customer = customersController.getCustomerByID(id);
    if (customer == null) {
      return CircularProgressIndicator();
    }
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("CUSTOMER DETAILS"),
                ),
              ],
            ),
          ),
          (customer.id).text().pad(),
          (customer.name).text(textScaleFactor: 2).pad(),
          (customer.city).text(textScaleFactor: 2).pad(),
        ],
      ),
    );
  }
}
