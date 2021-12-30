/// A Base class to create the basic styles to a `TextStyle`
library yuca_pulso;

import 'package:flutter/material.dart' show FontWeight;

class BaseStyleData {
  const BaseStyleData({
    required this.fontWeight,
    required this.fontFamily,
    required this.height,
    required this.fontSize,
  });

  /// Creates a new `BaseStyleData` from a custom font height, using the [fontSize] to calculate it
  factory BaseStyleData.fromDynamicHeight({
    required String fontFamily,
    required FontWeight fontWeight,
    required double initialHeight,
    required double fontSize,
  }) {
    return BaseStyleData(
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      height: initialHeight / fontSize,
      fontSize: fontSize,
    );
  }

  final String fontFamily;
  final FontWeight fontWeight;
  final double height;
  final double fontSize;
}
