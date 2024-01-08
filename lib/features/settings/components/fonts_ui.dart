import 'package:flutter/material.dart';
import 'package:ideal_store/features/settings/settings_controller.dart';
import 'package:ideal_store/features/shared/theme_manager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../shared/extensions.dart';
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
            for (final Font eachFont in fonts)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: randomGolor[100],
                  backgroundColor: randomGolor[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                onPressed: font == eachFont
                    ? null
                    : () {
                        font = eachFont;
                      },
                child: eachFont.text(),
              ).pad(),
          ],
        ),
      ],
    );
  }
}
