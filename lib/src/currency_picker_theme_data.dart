import 'package:flutter/material.dart';

class CurrencyPickerThemeData {
  ///  The currency bottom sheet's shape.
  final ShapeBorder? shape;

  /// The currency bottom sheet's background color.
  final Color? backgroundColor;

  ///The style to use for country name text.
  ///
  /// If null, the style will be set to [TextStyle(fontSize: 17)]
  final TextStyle? textStyle;

  CurrencyPickerThemeData({
    this.shape,
    this.textStyle,
    this.backgroundColor,
  });
}
