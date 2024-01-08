import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../../assets/licenses.dart';
import '../domain.dart';
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
  final directory = await getApplicationDocumentsDirectory();
  // isar = await Isar.open(
  //   [
  //     ProductSchema,
  //     CustomerSchema,
  //     OrderSchema,
  //     DomainSchema,
  //   ],
  //   directory: directory.path,
  //   name: 'IDEAL',
  // );
  await initDefaultImage;
  GoogleFonts.config.allowRuntimeFetching = false;
  addLicenses();
}
