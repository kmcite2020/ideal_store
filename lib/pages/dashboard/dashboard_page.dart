// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable, unused_import, unused_local_variable, dead_code, no_leading_underscores_for_local_identifiers

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ideal_store/shared/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../controllers/customers/customers_controller.dart';
import '../../controllers/products/products_controller.dart';
import '../../repositories/customers_repository.dart';
import '../../shared/router.dart';
import '../customers_page/customers_page.dart';
import '../orders/orders_view.dart';
import '../products/products_page.dart';
import '../settings/settings_page.dart';

class DashboardPage extends ReactiveStatelessWidget {
  static const path = '/dashboard';
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => router.to(SettingsPage.path),
            icon: Icon(Icons.settings),
          ),
          SizedBox(width: 5)
        ],
        title: 'Dashboard'.text(),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            ListTile(
              title: 'PRODUCTS'.text(textScaleFactor: 2),
              trailing: IconButton(
                tooltip: 'Go to Products Screen',
                onPressed: () => router.to(ProductsPage.path),
                icon: const Icon(Icons.store),
              ),
            ).pad(),
            ListTile(
              title: 'CUSTOMERS'.text(textScaleFactor: 2),
              trailing: IconButton(
                tooltip: 'Go to Customer Screen',
                onPressed: () {
                  router.to(CustomersPage.path);
                },
                icon: const Icon(Icons.people),
              ),
            ).pad(),
            ListTile(
              title: 'ORDERS'.text(textScaleFactor: 2),
              trailing: IconButton(
                tooltip: 'Go to Orders Screen',
                onPressed: () => router.to(OrdersView.path),
                icon: const Icon(
                  Icons.storm,
                ),
              ),
            ).pad(),
            ListTile(
              title: 'TOTAL PRODUCTS AVAILABLE'.text(),
              trailing: productsController.products.length.text(),
            ).pad(),
            ListTile(
              title: 'TOTAL CUSTOMERS AVAILABLE'.text(),
              trailing: customersController.customers.length.text(),
            ).pad(),
            ListTile(
              title: Text(
                'TOTAL PRODUCTS SOLD',
              ),
              trailing: Text('20'),
              subtitle: Text('PRODUCTS SOLD A LOT'),
            ).pad(),
            ListTile(
              trailing: Text('25'),
              title: Text(
                'TOTAL CUSTOMERS SERVED',
              ),
              subtitle: Text('NO CUSTOMER SATISFIED'),
            ).pad(),
            ListTile(
              title: 'Current Worth'.text(textScaleFactor: 2),
              subtitle: Text(
                productsController.currentWorth,
                textScaleFactor: 4,
              ),
            ).pad(),
          ],
        ),
      ),
    );
  }
}
