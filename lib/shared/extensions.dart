import 'package:flutter/material.dart';

import '../controllers/settings_controller.dart';
import 'theme_manager.dart';

extension TextX on Object? {
  Text text({
    Key? key,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) =>
      Text(
        toString(),
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      );
}

extension PaddingX on Widget {
  Widget pad([double? padding]) => Padding(
        padding: EdgeInsets.all(padding ?? settingsController.padding),
        child: this,
      );
  Widget clipRadius([double? borderRadius]) => ClipRRect(
        borderRadius:
            BorderRadius.circular(borderRadius ?? ThemeManager.borderRadius),
        child: this,
      );
  Widget center({
    double? widthFactor,
    double? heightFactor,
  }) =>
      Center(
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );
}

typedef Font = String;
