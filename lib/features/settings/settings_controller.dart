import 'package:ideal_store/main.dart';

final settingsRM = RM.persistent(
  () => Settings(),
  key: 'settings',
  fromJson: Settings.fromJson,
);

Settings get settingsState => settingsRM();
set settingsState(Settings value) => settingsRM(value);

bool get isAddCustomerVisible => settingsState.isAddCustomerVisible;
set isAddCustomerVisible(bool? value) {
  settingsState = settingsState.copyWith(isAddCustomerVisible: value!);
}

ThemeMode get themeMode => settingsState.themeMode;
set themeMode(ThemeMode? _) =>
    settingsState = settingsState.copyWith(themeMode: _!);

MaterialColor get materialColor => settingsState.materialColor;
set materialColor(MaterialColor? _) =>
    settingsState = settingsState.copyWith(materialColor: _!);

String get font => settingsState.font;
set font(Font font) => settingsState = settingsState.copyWith(font: font);

double get padding => settingsState.padding;
set padding(double value) =>
    settingsState = settingsState.copyWith(padding: value);

double get borderRadius => settingsState.borderRadius;
set borderRadius(double value) =>
    settingsState = settingsState.copyWith(borderRadius: value);
