import 'package:ideal_store/main.dart';

class CustomerTile extends UI {
  const CustomerTile({
    super.key,
    required this.customerID,
  });
  final String customerID;
  @override
  Widget build(BuildContext context) {
    return CustomerBuilder(
      custmerID: customerID,
      builder: (customer) {
        Widget Read() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton.filledTonal(
                onPressed: () {
                  setCustomer(customer.copyWith(editing: true));
                },
                icon: Icon(Icons.edit_document),
              ).pad(),
              IconButton.filledTonal(
                icon: const Icon(Icons.delete_forever),
                onPressed: () {
                  removeCustomer(customerID);
                },
              ).pad(),
              IconButton.filled(
                icon: customer.name.toUpperCase().text(),
                onPressed: () =>
                    navigator.to(CustomerPage(customerID: customerID)),
              ).pad(),
              IconButton.filled(
                icon: customer.city.toUpperCase().text(),
                onPressed: null,
              ).pad(),
            ],
          ).card();
        }

        Widget Edit() {
          final possibleProducts = products.where(
            (element) => !customer.products.contains(element.productID),
          );
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton.filledTonal(
                onPressed: () {
                  setCustomer(customer.copyWith(editing: false));
                },
                icon: Icon(Icons.edit),
              ).pad(),
              TextFormField(
                initialValue: customer.name,
                onChanged: (value) {
                  setCustomer(customer.copyWith(name: value));
                },
                decoration: InputDecoration(labelText: 'NAME'),
              ).pad(),
              DropdownButtonFormField(
                value: customer.city,
                items: cities
                    .map(
                      (eachCity) => DropdownMenuItem(
                        value: eachCity,
                        child: eachCity.toUpperCase().text(),
                      ),
                    )
                    .toList(),
                onChanged: (city) {
                  setCustomer(customer.copyWith(city: city!));
                },
                decoration: InputDecoration(labelText: 'CITY'),
              ).pad(),
              Wrap(
                children: [
                  Icon(Icons.production_quantity_limits),
                  SizedBox(width: 5),
                  'Products'.text(),
                ],
              ).pad(),
              Wrap(
                children: customer.products
                    .map(
                      (eachProductID) => Product.id(eachProductID),
                    )
                    .map(
                      (eachProduct) => SizedBox(
                        child: ActionChip.elevated(
                          onPressed: () {
                            setCustomer(
                              customer.copyWith(
                                products: List.of(customer.products)
                                  ..remove(eachProduct.productID),
                              ),
                            );
                          },
                          label: eachProduct.name.text(),
                        ).pad(),
                      ),
                    )
                    .toList(),
              ),
              SubmenuButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    settingsState.borderRadius,
                  ),
                )),
                menuChildren: possibleProducts
                    .map(
                      (eachProduct) => MenuItemButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            settingsState.borderRadius,
                          ),
                        )),
                        onPressed: () {
                          setCustomer(
                            customer.copyWith(
                              products: List.of(customer.products)
                                ..add(
                                  eachProduct.productID,
                                ),
                            ),
                          );
                        },
                        child: eachProduct.name.text(),
                      ),
                    )
                    .toList(),
                child: Row(
                  children: [
                    Icon(Icons.store).pad(
                      EdgeInsets.symmetric(
                        horizontal: settingsState.padding,
                      ),
                    ),
                    possibleProducts.isEmpty
                        ? 'No products available to add'.text().pad()
                        : 'Products Available'.text().pad(),
                  ],
                ),
              ),
              // PopupMenuButton<Product>(
              //   initialValue: products.firstOrNull,
              //   icon: Icon(Icons.store),
              //   enabled: possibleProducts.isNotEmpty,
              //   itemBuilder: (x) {
              //     return possibleProducts
              //         .map(
              //           (e) => PopupMenuItem<Product>(
              //             value: e,
              //             child: e.name.text(),
              //           ),
              //         )
              //         .toList();
              //   },
              //   onSelected: (product) {
              //     setCustomer(
              //       customer.copyWith(
              //         products: List.of(customer.products)
              //           ..add(
              //             product.productID,
              //           ),
              //       ),
              //     );
              //   },
              // ).pad(),
              CircleAvatar(child: customer.products.length.text()).pad()
            ],
          ).card();
        }

        if (customer.editing)
          return Edit();
        else
          return Read();
      },
    );
  }
}
