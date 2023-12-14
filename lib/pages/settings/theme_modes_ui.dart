import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../controllers/settings_controller.dart';
import '../../shared/extensions.dart';

class ThemeModesUI extends ReactiveStatelessWidget {
  const ThemeModesUI({super.key});
  bool isThemeModeSelected(ThemeMode eachMode) => settingsController.themeMode == eachMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'Modes'.text(textScaleFactor: 4).pad(),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          physics: const BouncingScrollPhysics(),
          children: [
            () {
              const eachMode = ThemeMode.dark;
              return ElevatedButton(
                onPressed: isThemeModeSelected(eachMode)
                    ? null
                    : () {
                        settingsController.themeMode = eachMode;
                      },
                child: const Icon(
                  Icons.dark_mode,
                  size: 80,
                ),
              ).pad();
            }(),
            () {
              const eachMode = ThemeMode.light;
              return ElevatedButton(
                onPressed: isThemeModeSelected(eachMode)
                    ? null
                    : () {
                        settingsController.themeMode = eachMode;
                      },
                child: const Icon(Icons.light_mode, size: 80),
              ).pad();
            }(),
          ],
        ).pad()
      ],
    );
  }
}
