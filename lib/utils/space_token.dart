/// A space token spacing factory to creates all the Design System's listed Spacing values.
///
/// The proposal is to create Spacing Tokens and segment them into three structures:
///  * The "pure" `double` value, used to the below structures and for custom spacing;
///  * The `SizedBox` structure values, used to create space between widgets;
///  * The `EdgeInsets` structure values, used to create *padding* and *margin* values. In this case, only the [EdgeInsets.all] and the [EdgeInsets.symmetric] is available.

library yuca_pulso;

import 'package:flutter/material.dart';

/// All the supported values to be used for create space for the
///  [EdgeInsets] and [SizedBox]
class YucaSpacingToken {
  /// By creating a empty private constructor, we prevent the user from extends
  ///  or creates an empty instance from this class.
  YucaSpacingToken._();

  /// Defaults to `10.0`
  static const double extraSmall = 10.0;

  /// Defaults to `20.0`
  static const double small = 20.0;

  /// Defaults to `30.0`
  static const double medium = 30.0;

  /// Defaults to `60.0`
  static const double large = 60.0;

  /// Defaults to `90.0`
  static const double extraLarge = 90.0;
}

/// All the supported values to be used for create space between the widgets
/// into [Height] and [Width]

class YucaSpacingSize extends SizedBox {
  /// Returns a [SizedBox] with a `extra small` height
  ///
  /// Default value: `10`
  const YucaSpacingSize.heightExtraSmall({Key? key}) : super(height: YucaSpacingToken.extraSmall, key: key);

  /// Returns a [SizedBox] with a `small` height
  ///
  /// Default value: `20`
  const YucaSpacingSize.heightSmall({Key? key}) : super(height: YucaSpacingToken.small, key: key);

  /// Returns a [SizedBox] with a `medium` height
  ///
  /// Default value: `30`
  const YucaSpacingSize.heightMedium({Key? key}) : super(height: YucaSpacingToken.medium, key: key);

  /// Returns a [SizedBox] with a `large` height
  ///
  /// Default value: `60`
  const YucaSpacingSize.heightLarge({Key? key}) : super(height: YucaSpacingToken.large, key: key);

  /// Returns a [SizedBox] with a `extra large` height
  ///
  /// Default value: `90`
  const YucaSpacingSize.heightExtraLarge({Key? key}) : super(height: YucaSpacingToken.extraLarge, key: key);

  /// Returns a [SizedBox] with a `extra small` width
  ///
  /// Default value: `10`
  const YucaSpacingSize.widthExtraSmall({Key? key}) : super(width: YucaSpacingToken.extraSmall, key: key);

  /// Returns a [SizedBox] with a `small` width
  ///
  /// Default value: `20`
  const YucaSpacingSize.widthSmall({Key? key}) : super(width: YucaSpacingToken.small, key: key);

  /// Returns a [SizedBox] with a `medium` width
  ///
  /// Default value: `30`
  const YucaSpacingSize.widthMedium({Key? key}) : super(width: YucaSpacingToken.medium, key: key);

  /// Returns a [SizedBox] with a `large` width
  ///
  /// Default value: `60`
  const YucaSpacingSize.widthLarge({Key? key}) : super(width: YucaSpacingToken.large, key: key);

  /// Returns a [SizedBox] with a `extra large` width
  ///
  /// Default value: `90`
  const YucaSpacingSize.widthExtraLarge({Key? key}) : super(width: YucaSpacingToken.extraLarge, key: key);
}

/// All the supported values to be used for create [EdgeInsets] for the widgets
/// Only the [EdgeInsets.symmetric] and [EdgeInsets.all] methods is covered

class YucaSpacingEdgeInsets extends EdgeInsets {
  /// Returns a [EdgeInsets.all] with a all the `extra small` values
  ///
  /// Default value: `10`
  const YucaSpacingEdgeInsets.allExtraSmall() : super.all(YucaSpacingToken.extraSmall);

  /// Returns a [EdgeInsets.all] with a all the `small` values
  ///
  /// Default value: `20`
  const YucaSpacingEdgeInsets.allSmall() : super.all(YucaSpacingToken.small);

  /// Returns a [EdgeInsets.all] with a all the `medium` values
  ///
  /// Default value: `30`
  const YucaSpacingEdgeInsets.allMedium() : super.all(YucaSpacingToken.medium);

  /// Returns a [EdgeInsets.all] with a all the `large` values
  ///
  /// Default value: `60`
  const YucaSpacingEdgeInsets.allLarge() : super.all(YucaSpacingToken.large);

  /// Returns a [EdgeInsets.all] with a all the `extra large` values
  ///
  /// Default value: `90`
  const YucaSpacingEdgeInsets.allExtraLarge() : super.all(YucaSpacingToken.extraLarge);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `extra small` values
  ///
  /// Default value: `10`
  const YucaSpacingEdgeInsets.verticalExtraSmall() : super.symmetric(vertical: YucaSpacingToken.extraSmall);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `small` values
  ///
  /// Default value: `20`
  const YucaSpacingEdgeInsets.verticalSmall() : super.symmetric(vertical: YucaSpacingToken.small);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `medium` values
  ///
  /// Default value: `30`
  const YucaSpacingEdgeInsets.verticalMedium() : super.symmetric(vertical: YucaSpacingToken.medium);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `large` values
  ///
  /// Default value: `60`
  const YucaSpacingEdgeInsets.verticalLarge() : super.symmetric(vertical: YucaSpacingToken.large);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `extra large` values
  ///
  /// Default value: `90`
  const YucaSpacingEdgeInsets.verticalExtraLarge() : super.symmetric(vertical: YucaSpacingToken.extraLarge);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `extra small` values
  ///
  /// Default value: `10`
  const YucaSpacingEdgeInsets.horizontalExtraSmall() : super.symmetric(horizontal: YucaSpacingToken.extraSmall);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `small` values
  ///
  /// Default value: `20`
  const YucaSpacingEdgeInsets.horizontalSmall() : super.symmetric(horizontal: YucaSpacingToken.small);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `medium` values
  ///
  /// Default value: `30`
  const YucaSpacingEdgeInsets.horizontalMedium() : super.symmetric(horizontal: YucaSpacingToken.medium);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `large` values
  ///
  /// Default value: `60`
  const YucaSpacingEdgeInsets.horizontalLarge() : super.symmetric(horizontal: YucaSpacingToken.large);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `extra large` values
  ///
  /// Default value: `90`
  const YucaSpacingEdgeInsets.horizontalExtraLarge() : super.symmetric(horizontal: YucaSpacingToken.extraLarge);
}
