import 'package:ideal_store/features/orders/order.dart';
import 'package:ideal_store/features/shared/extensions.dart';
import 'package:ideal_store/main.dart';

class OrdersPage extends UI {
  static const path = '/orders';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Orders'),
        actions: [
          IconButton(
            tooltip: 'Back to Dashboard',
            onPressed: () => RM.navigate.back(),
            icon: Icon(
              Icons.dashboard,
            ),
          ).pad(),
          IconButton(
            tooltip: 'place orders for customer',
            onPressed: () {},
            icon: Icon(Icons.account_box_sharp),
          ).pad(),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) => orders[index].text(),
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
