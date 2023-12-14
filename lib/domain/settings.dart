part of 'domain.dart';

@embedded
class Configuration {
  bool isAddCustomerVisible = false;
  bool isThemeModesExtended = false;
  bool isColorsExtended = false;
  bool isFontsExtended = false;
  String font = 'Dosis';
  @enumerated
  ThemeMode themeMode = ThemeMode.system;
  int colorIndex = 0;
  double price = 0.0;

  @ignore
  MaterialColor get materialColor {
    return Colors.primaries[colorIndex];
  }

  set materialColor(MaterialColor value) {
    colorIndex = Colors.primaries.indexOf(value);
  }

  double padding = 8.0;
  double borderRadius = 8.0;
}
