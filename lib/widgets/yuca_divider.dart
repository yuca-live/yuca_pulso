library yuca_pulso;

/// The Design System Horizontal Divider

import 'package:flutter/material.dart';
import 'package:yuca_pulso/colors/color_styles.dart';

class YucaDivider extends Divider {
  const YucaDivider({
    Key? key,
    double height = 0,
    double thickness = 1,
    Color color = YucaColorStyles.base10,
    this.leadingEdge,
    this.trailingEdge,
  }) : super(
          key: key,
          height: height,
          color: color,
          thickness: thickness,
          indent: leadingEdge,
          endIndent: trailingEdge,
        );

  /// The amount of empty space to the leading edge of the divider.
  ///
  /// Follows the value of the [Divider.indent]
  /// also null, then this defaults to 0.0.
  final double? leadingEdge;

  /// The amount of empty space to the trailing edge of the divider.
  ///
  /// Follows the value of the [Divider.endIndent]
  /// also null, then this defaults to 0.0.
  final double? trailingEdge;
}
