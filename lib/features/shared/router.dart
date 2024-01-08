import '../../main.dart';

final navigator = RM.injectNavigator(
  initialLocation: DashboardPage.path,
  routes: {
    DashboardPage.path: (data) => DashboardPage(),
    ProductsPage.path: (data) => ProductsPage(),
    CustomersPage.path: (data) => CustomersPage(),
    CustomerPage.path: (data) => CustomerPage(customerID: data.arguments),
    OrdersPage.path: (data) => OrdersPage(),
    ProductPage.path: (data) => ProductPage(productID: data.arguments.id),
    OrderPage.path: (RouteData data) => OrderPage(orderID: data.arguments),
    SettingsPage.path: (data) => SettingsPage(),
  },
);
