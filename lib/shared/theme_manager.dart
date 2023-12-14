import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../controllers/settings_controller.dart';
import 'extensions.dart';

class ThemeManager {
  static get okColor => color[700];
  static get errorColor => color[300];
  static BuildContext get context => RM.context!;
  static bool get isDark => Theme.of(context).brightness == Brightness.dark;

  static ThemeData get theme {
    return FlexThemeData.light(
      fontFamily: GoogleFonts.getFont(font).fontFamily,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: color),
      useMaterial3: true,
      appBarStyle: FlexAppBarStyle.primary,
      lightIsWhite: true,
      subThemesData: FlexSubThemesData(
        buttonMinSize: Size(double.maxFinite, 50),
        defaultRadius: settingsController.borderRadius,
      ),
      tooltipsMatchBackground: true,
    );
  }

  static ThemeData get darkTheme {
    return FlexThemeData.dark(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: color,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      darkIsTrueBlack: true,
      fontFamily: GoogleFonts.getFont(font).fontFamily,
      appBarStyle: FlexAppBarStyle.primary,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsController.borderRadius,
        buttonMinSize: Size(double.maxFinite, 50),
        useFlutterDefaults: true,
      ),
      tooltipsMatchBackground: true,
    );
  }

  static Size get buttonSize => const Size(65, 65);
  static ThemeMode get themeMode => settingsController.themeMode;
  static double get appBarHeight => 80;
  static MaterialColor get color => settingsController.materialColor;
  static Font get font => settingsController.font;
  static double get borderRadius => settingsController.borderRadius;
  static List<MaterialColor> get colors => Colors.primaries;
  static List<ThemeMode> get themeModes => ThemeMode.values;
  static List<String> get fonts {
    return [
      "Azeret Mono",
      "Comfortaa",
      "DM Mono",
      "Dosis",
      "Fira Sans",
      "IBM Plex Mono",
      "Josefin Sans",
      "Montserrat",
      "Space Mono",
      "Ubuntu",
    ];
  }
}
