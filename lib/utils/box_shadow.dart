/// There are two classes to controls the [BoxShadow] in the [up] and [down] direction
/// Currently, we don't add an abstraction to unify both classes
/// to keep the constructors with the constant properties.

library yuca_pulso;

import 'package:flutter/material.dart';
import 'package:yuca_pulso/colors/color_styles.dart';

/// The [BoxShadow] factory creates all the shadows in the [Down] direction.
/// We don't use the `factory` keyword to maintain the constructors with the constant properties.
/// The abstract class prevents the user from creating an instance without value,
/// and we keep the option to be extended by another class in the future.
abstract class YucaBoxShadowDown extends BoxShadow {
  /// Creates a [BoxShadow] object with the first shadow elevation level.
  const YucaBoxShadowDown.level1()
      : super(
          color: YucaColorStyles.elevationLevel1,
          offset: const Offset(0, 2),
          blurRadius: 8,
          spreadRadius: 0,
        );

  /// Creates a [BoxShadow] object with the second shadow elevation level.
  const YucaBoxShadowDown.level2()
      : super(
          color: YucaColorStyles.elevationLevel2,
          offset: const Offset(0, 4),
          blurRadius: 10,
          spreadRadius: 0,
        );

  /// Creates a [BoxShadow] object with a shadow with negative spread elevation.
  const YucaBoxShadowDown.nevagiteSpread()
      : super(
          color: YucaColorStyles.elevationNegativeSpread,
          offset: const Offset(0, 24),
          blurRadius: 30,
          spreadRadius: -20,
        );
}

/// The [BoxShadow] factory creates all the shadows in the [Up] direction.
/// We don't use the `factory` keyword to maintain the constructors with the constant properties.
/// The abstract class prevents the user from creating an instance without value,
/// and we keep the option to be extended by another class in the future.
abstract class YucaBoxShadowUp extends BoxShadow {
  /// Creates a [BoxShadow] object with the first shadow elevation level.
  const YucaBoxShadowUp.level1()
      : super(
          color: YucaColorStyles.elevationLevel1,
          offset: const Offset(0, -2),
          blurRadius: 8,
          spreadRadius: 0,
        );

  /// Creates a [BoxShadow] object with the second shadow elevation level.
  const YucaBoxShadowUp.level2()
      : super(
          color: YucaColorStyles.elevationLevel2,
          offset: const Offset(0, -4),
          blurRadius: 10,
          spreadRadius: 0,
        );

  /// Creates a [BoxShadow] object with a shadow with negative spread elevation.
  const YucaBoxShadowUp.nevagiteSpread()
      : super(
          color: YucaColorStyles.elevationNegativeSpread,
          offset: const Offset(0, -24),
          blurRadius: 30,
          spreadRadius: -20,
        );
}
