import 'main.dart';

export 'dart:convert';
export 'dart:math';
export 'package:colornames/colornames.dart';
export 'package:file_picker/file_picker.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:ideal_store/assets/licenses.dart';
export 'package:ideal_store/features/customers/components/customer_builder.dart';
export 'package:ideal_store/features/customers/customer.dart';
export 'package:ideal_store/features/customers/pages/customer_page.dart';
export 'package:ideal_store/features/customers/pages/customers_page.dart';
export 'package:ideal_store/features/dashboard/dashboard_page.dart';
export 'package:ideal_store/features/orders/pages/order_page.dart';
export 'package:ideal_store/features/orders/pages/orders_page.dart';
export 'package:ideal_store/features/products/components/product_builder.dart';
export 'package:ideal_store/features/products/pages/product_page.dart';
export 'package:ideal_store/features/products/pages/products_page.dart';
export 'package:ideal_store/features/products/product.dart';
export 'package:ideal_store/features/products/products_controller.dart';
export 'package:ideal_store/features/settings/components/fonts_ui.dart';
export 'package:ideal_store/features/settings/components/material_colors_ui.dart';
export 'package:ideal_store/features/settings/components/theme_modes_ui.dart';
export 'package:ideal_store/features/settings/pages/settings_page.dart';
export 'package:ideal_store/features/settings/settings.dart';
export 'package:ideal_store/features/settings/settings_controller.dart';
export 'package:ideal_store/features/shared/extensions.dart';
export 'package:ideal_store/features/shared/router.dart';
export 'package:ideal_store/features/shared/theme_manager.dart';
export 'package:ideal_store/features/shared/utils.dart';
export 'package:ideal_store/main.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

typedef UI = ReactiveStatelessWidget;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDefaultImage;
  await RM.storageInitializer(HiveStorage());
  runApp(const App());
}

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: navigator.routeInformationParser,
      routerDelegate: navigator.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: themeMode,
    );
  }
}
