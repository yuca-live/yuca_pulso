/// A [TextStyle] factory to return the supported [TextStyles] and creates custom styles.

library yuca_pulso;

import 'dart:ui';

import 'package:flutter/material.dart' show TextStyle;

import 'base_style_data.dart';
import 'font_family.dart';
import 'text_styles.dart';

class YucaTypography {
  /// By creating a empty private constructor, we prevent the user from extends
  ///  or creates an empty instance from this class.
  YucaTypography._();

  static TextStyle create(
    YucaTextStyles baseStyle, {
    Color? color,
    Color? backgroundColor,
    FontStyle? fontStyle,
    double? wordSpacing,
    TextBaseline? textBaseline,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration = TextDecoration.none,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    FontWeight? fontWeight,
  }) {
    final styleData = _createBaseStyleData(baseStyle);

    return TextStyle(
      fontFamily: styleData.fontFamily,
      package: 'yuca_pulso',
      fontWeight: fontWeight ?? styleData.fontWeight,
      height: styleData.height,
      fontSize: styleData.fontSize,
      color: color,
      backgroundColor: backgroundColor,
      fontStyle: fontStyle,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  /// Creates a new Base Style from the [YucaTextStyles] list
  /// params: `YucaTextStyles` baseStyle
  static BaseStyleData _createBaseStyleData(YucaTextStyles baseStyle) {
    switch (baseStyle) {
      case YucaTextStyles.headingZero:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.fraunces,
          fontSize: 48,
          fontWeight: FontWeight.w900,
          initialHeight: 60,
        );

      case YucaTextStyles.headingOne:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.fraunces,
          fontSize: 36,
          fontWeight: FontWeight.w900,
          initialHeight: 48,
        );

      case YucaTextStyles.headingTwo:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.fraunces,
          fontSize: 24,
          fontWeight: FontWeight.w900,
          initialHeight: 32,
        );

      case YucaTextStyles.headingThree:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.fraunces,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          initialHeight: 28,
        );

      case YucaTextStyles.headingFour:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          initialHeight: 25,
        );

      case YucaTextStyles.headingFive:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          initialHeight: 20,
        );

      case YucaTextStyles.bodyLargeBold:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          initialHeight: 30,
        );

      case YucaTextStyles.bodyLargeRegular:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          initialHeight: 30,
        );

      case YucaTextStyles.bodyMediumBold:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          initialHeight: 24,
        );

      case YucaTextStyles.bodyMediumRegular:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          initialHeight: 24,
        );

      case YucaTextStyles.bodySmallBold:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          initialHeight: 20,
        );

      case YucaTextStyles.bodySmallRegular:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          initialHeight: 20,
        );

      case YucaTextStyles.placeholdSmall:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          initialHeight: 20,
        );

      case YucaTextStyles.callToActionBold:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          initialHeight: 12,
        );

      case YucaTextStyles.callToActionSemi:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          initialHeight: 12,
        );

      case YucaTextStyles.caption:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          initialHeight: 18,
        );

      case YucaTextStyles.captionBold:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: YucaFontFamily.montserrat,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          initialHeight: 18,
        );
    }
  }
}
