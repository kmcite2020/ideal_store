import '../../main.dart';

const uuid = Uuid();
String get randomID => uuid.v1();
MaterialColor get randomGolor =>
    Colors.primaries[Random().nextInt(Colors.primaries.length)];

const customerIcon = Icon(Icons.people);

const emptyListInfoCustomer =
    'Currently there are no customers available in the list. Kindly try adding some customers using the corner emoji button.';

const emptyListInfoProduct =
    'Currently there are no products available in the list. Kindly try adding some products using the corner button.';
const customersHiveName = 'customer';
const productsHiveName = 'products';
const ordersHiveName = 'orders';
late String defaultImage;
Future<void> get initDefaultImage async {
  ByteData bytes = await rootBundle.load('lib/assets/icon.png');
  defaultImage = base64Encode(bytes.buffer.asUint8List());
}

Future<void> initializeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDefaultImage;
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();
}
