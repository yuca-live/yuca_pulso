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

  static const double extraSmall = 10.0;
  static const double small = 20.0;
  static const double medium = 30.0;
  static const double large = 60.0;
  static const double extraLarge = 90.0;
}

/// All the supported values to be used for create space between the widgets
/// into [Height] and [Width]
/// We set the class into the abstract mode to prevent the user creates an instance without value,
/// but keeping the support to be extended in the future.
abstract class YucaSpacingSize extends SizedBox {
  /// Returns a [SizedBox] with a `extra small` height
  const YucaSpacingSize.heightExtraSmall({Key? key})
      : super(height: YucaSpacingToken.extraSmall, key: key);

  /// Returns a [SizedBox] with a `small` height
  const YucaSpacingSize.heightSmall({Key? key})
      : super(height: YucaSpacingToken.small, key: key);

  /// Returns a [SizedBox] with a `medium` height
  const YucaSpacingSize.heightMedium({Key? key})
      : super(height: YucaSpacingToken.medium, key: key);

  /// Returns a [SizedBox] with a `large` height
  const YucaSpacingSize.heightLarge({Key? key})
      : super(height: YucaSpacingToken.large, key: key);

  /// Returns a [SizedBox] with a `extra large` height
  const YucaSpacingSize.heightExtraLarge({Key? key})
      : super(height: YucaSpacingToken.extraLarge, key: key);

  /// Returns a [SizedBox] with a `extra small` width
  const YucaSpacingSize.widthExtraSmall({Key? key})
      : super(width: YucaSpacingToken.extraSmall, key: key);

  /// Returns a [SizedBox] with a `small` width
  const YucaSpacingSize.widthSmall({Key? key})
      : super(width: YucaSpacingToken.small, key: key);

  /// Returns a [SizedBox] with a `medium` width
  const YucaSpacingSize.widthMedium({Key? key})
      : super(width: YucaSpacingToken.medium, key: key);

  /// Returns a [SizedBox] with a `large` width
  const YucaSpacingSize.widthLarge({Key? key})
      : super(width: YucaSpacingToken.large, key: key);

  /// Returns a [SizedBox] with a `extra large` width
  const YucaSpacingSize.widthExtraLarge({Key? key})
      : super(width: YucaSpacingToken.extraLarge, key: key);
}

/// All the supported values to be used for create [EdgeInsets] for the widgets
/// Only the [EdgeInsets.symmetric] and [EdgeInsets.all] methods is covered
/// We set the class into the abstract mode to prevent the user creates an instance without value,
/// but keeping the support to be extended in the future.
abstract class YucaSpacingEdgeInsets extends EdgeInsets {
  /// Returns a [EdgeInsets.all] with a all the `extra small` values
  const YucaSpacingEdgeInsets.allExtraSmall()
      : super.all(YucaSpacingToken.extraSmall);

  /// Returns a [EdgeInsets.all] with a all the `small` values
  const YucaSpacingEdgeInsets.allSmall() : super.all(YucaSpacingToken.small);

  /// Returns a [EdgeInsets.all] with a all the `medium` values
  const YucaSpacingEdgeInsets.allMedium() : super.all(YucaSpacingToken.medium);

  /// Returns a [EdgeInsets.all] with a all the `large` values
  const YucaSpacingEdgeInsets.allLarge() : super.all(YucaSpacingToken.large);

  /// Returns a [EdgeInsets.all] with a all the `extra large` values
  const YucaSpacingEdgeInsets.allExtraLarge()
      : super.all(YucaSpacingToken.extraLarge);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `extra small` values
  const YucaSpacingEdgeInsets.verticalExtraSmall()
      : super.symmetric(vertical: YucaSpacingToken.extraSmall);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `small` values
  const YucaSpacingEdgeInsets.verticalSmall()
      : super.symmetric(vertical: YucaSpacingToken.small);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `medium` values
  const YucaSpacingEdgeInsets.verticalMedium()
      : super.symmetric(vertical: YucaSpacingToken.medium);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `large` values
  const YucaSpacingEdgeInsets.verticalLarge()
      : super.symmetric(vertical: YucaSpacingToken.large);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `extra large` values
  const YucaSpacingEdgeInsets.verticalExtraLarge()
      : super.symmetric(vertical: YucaSpacingToken.extraLarge);

  /// Returns a [EdgeInsets.symmetric] with a vertical the `extra small` values
  const YucaSpacingEdgeInsets.horizontalExtraSmall()
      : super.symmetric(horizontal: YucaSpacingToken.extraSmall);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `small` values
  const YucaSpacingEdgeInsets.horizontalSmall()
      : super.symmetric(horizontal: YucaSpacingToken.small);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `medium` values
  const YucaSpacingEdgeInsets.horizontalMedium()
      : super.symmetric(horizontal: YucaSpacingToken.medium);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `large` values
  const YucaSpacingEdgeInsets.horizontalLarge()
      : super.symmetric(horizontal: YucaSpacingToken.large);

  /// Returns a [EdgeInsets.symmetric] with a horizontal the `extra large` values
  const YucaSpacingEdgeInsets.horizontalExtraLarge()
      : super.symmetric(horizontal: YucaSpacingToken.extraLarge);
}
