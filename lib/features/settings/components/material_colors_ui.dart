import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:ideal_store/features/settings/settings_controller.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../shared/extensions.dart';
import '../../shared/theme_manager.dart';

class MaterialColorsUI extends ReactiveStatelessWidget {
  const MaterialColorsUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Colors".text(textScaleFactor: 4).pad(),
          ],
        ),
        GridView.count(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 1.4,
          children: [
            for (final eachColor in colors)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: eachColor[100],
                  backgroundColor: eachColor[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                onPressed: materialColor == eachColor
                    ? null
                    : () {
                        materialColor = eachColor;
                      },
                child: eachColor.colorName.text(textScaleFactor: .8),
              ).pad(),
          ],
        ),
      ],
    );
  }
}
