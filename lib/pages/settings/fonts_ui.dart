import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../controllers/settings_controller.dart';
import '../../shared/extensions.dart';
import '../../shared/theme_manager.dart';
import '../../shared/utils.dart';

class FontsUI extends ReactiveStatelessWidget {
  const FontsUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Fonts".text(textScaleFactor: 4).pad(),
          ],
        ),
        ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            for (final Font font in ThemeManager.fonts)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: randomGolor[100],
                  backgroundColor: randomGolor[900],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(ThemeManager.borderRadius),
                  ),
                ),
                onPressed: settingsController.font == font
                    ? null
                    : () {
                        settingsController.font = font;
                      },
                child: font.text(),
              ).pad(),
          ],
        ),
      ],
    );
  }
}
