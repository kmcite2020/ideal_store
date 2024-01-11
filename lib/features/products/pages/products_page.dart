import 'package:ideal_store/main.dart';

class ProductsPage extends UI {
  static const path = '/products';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('PRODUCTS'),
        actions: [
          IconButton(
            tooltip: 'Add Product',
            onPressed: () {
              setProduct(Product().copyWith());
            },
            icon: Icon(
              Icons.add_shopping_cart,
            ),
          ).pad(),
          IconButton(
            tooltip: 'Back to Dashboard',
            onPressed: () => navigator.to(DashboardPage()),
            icon: Icon(
              Icons.arrow_back,
            ),
          ).pad(
            EdgeInsets.only(right: padding),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              if (products.isEmpty)
                emptyListInfoProduct
                    .text(
                      textScaleFactor: 2,
                    )
                    .pad(),
              ...products.map(
                (eachProduct) => ProductTile(
                  productID: eachProduct.productID,
                  size: size,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
