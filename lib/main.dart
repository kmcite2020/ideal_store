import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'shared/i18n/i18n.dart';
import 'shared/router.dart';
import 'shared/theme_manager.dart';
import 'shared/utils.dart';

late Isar isar;

void main() async {
  await initializeDependencies();
  runApp(MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.theme,
      darkTheme: ThemeManager.darkTheme,
      themeMode: ThemeManager.themeMode,
      locale: i18n.locale,
      localeResolutionCallback: i18n.localeResolutionCallback,
      localizationsDelegates: i18n.localizationsDelegates,
      supportedLocales: i18n.supportedLocales,
    );
  }
}
