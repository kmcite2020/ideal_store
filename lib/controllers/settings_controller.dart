// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../domain/domain.dart';
import '../shared/extensions.dart';
import 'domain_controller.dart';

class SettingsController {
  Configuration get configurationModel => domainController.domain.configuration;
  void setSettingsModel(Configuration value) async {
    domainController.setDomain(
      domainController.domain..configuration = value,
    );
  }

  ThemeMode get themeMode => configurationModel.themeMode;
  MaterialColor get materialColor => configurationModel.materialColor;
  // String get font => x.font;
  double get padding => configurationModel.padding;
  double get borderRadius => configurationModel.borderRadius;
  bool get isAddCustomerVisible => configurationModel.isAddCustomerVisible;
  String get font => configurationModel.font;
  set isAddCustomerVisible(bool? value) {
    setSettingsModel(
      configurationModel..isAddCustomerVisible = value!,
    );
  }

  set themeMode(ThemeMode? value) {
    setSettingsModel(
      configurationModel..themeMode = value!,
    );
  }

  set color(MaterialColor? value) {
    setSettingsModel(
      configurationModel..materialColor = value!,
    );
  }

  set font(Font font) {
    setSettingsModel(
      configurationModel..font = font,
    );
  }

  set padding(double value) {
    setSettingsModel(
      configurationModel..padding = value,
    );
  }

  set borderRadius(double value) {
    setSettingsModel(
      configurationModel..borderRadius = value,
    );
  }
}

final settingsController = SettingsController();
