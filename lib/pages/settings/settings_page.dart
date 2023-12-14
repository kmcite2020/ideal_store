// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../shared/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../controllers/customers/customers_controller.dart';
import '../../controllers/products/products_controller.dart';
import 'fonts_ui.dart';
import 'material_colors_ui.dart';
import 'theme_modes_ui.dart';

class SettingsPage extends ReactiveStatelessWidget {
  static const path = '/configuration';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'Settings'.text(),
        actions: [
          const BackButton().pad(),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          'Customers'.text(textScaleFactor: 4).pad(),
          ElevatedButton(
            onPressed: customersController.customers.isEmpty
                ? null
                : () {
                    customersController.clearCustomers();
                  },
            child: 'Delete All Customers'.text(),
          ).pad(),
          'Products'.text(textScaleFactor: 4).pad(),
          ElevatedButton(
            onPressed: productsController.products.isEmpty
                ? null
                : () {
                    productsController.clearProducts();
                  },
            child: 'Delete All Products'.text(),
          ).pad(),
          const ThemeModesUI(),
          const MaterialColorsUI(),
          const FontsUI(),
        ],
      ),
    );
  }
}
