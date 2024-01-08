import '../../../main.dart';

class SettingsPage extends UI {
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
            onPressed: customers.isEmpty
                ? null
                : () {
                    clearCustomers();
                  },
            child: 'Delete All Customers'.text(),
          ).pad(),
          'Products'.text(textScaleFactor: 4).pad(),
          ElevatedButton(
            onPressed: products.isEmpty
                ? null
                : () {
                    clearProducts();
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
