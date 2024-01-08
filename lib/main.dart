import 'main.dart';
export 'package:ideal_store/features/shared/manager.dart';
export 'dart:convert';
export 'package:flutter/services.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:path_provider/path_provider.dart';
export 'package:uuid/uuid.dart';
export 'package:ideal_store/assets/licenses.dart';
export 'package:flutter/material.dart' hide Listener;
export 'dart:math';
export 'package:ideal_store/main.dart';
export 'package:ideal_store/features/shared/extensions.dart';
export 'package:ideal_store/features/shared/router.dart';
export 'package:ideal_store/features/shared/theme_manager.dart';
export 'package:ideal_store/features/shared/utils.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:ideal_store/features/shared/cities.dart';

void main() async {
  await initializeDependencies();
  runApp(App());
}

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: navigator.routeInformationParser,
      routerDelegate: navigator.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.theme,
      darkTheme: ThemeManager.darkTheme,
      themeMode: ThemeManager.themeMode,
    );
  }
}
