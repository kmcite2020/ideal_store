import 'package:states_rebuilder/states_rebuilder.dart';

import '../pages/customers_page/customer_page.dart';
import '../pages/customers_page/customers_page.dart';
import '../pages/dashboard/dashboard_page.dart';
import '../pages/orders/orders_view.dart';
import '../pages/products/product_page.dart';
import '../pages/products/products_page.dart';
import '../pages/settings/settings_page.dart';

final router = RM.injectNavigator(
  initialLocation: DashboardPage.path,
  routes: {
    DashboardPage.path: (data) => DashboardPage(),
    ProductsPage.path: (data) => ProductsPage(),
    CustomersPage.path: (data) => CustomersPage(),
    OrdersView.path: (data) => OrdersView(),
    ProductPage.path: (data) => ProductPage(data.arguments.id),
    CustomerPage.path: (data) => CustomerPage(0),
    // OrderView.path: (data) => OrdersView(),
    SettingsPage.path: (data) => SettingsPage(),
  },
);
