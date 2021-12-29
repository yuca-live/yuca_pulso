import 'dart:ui';

import 'package:flutter/material.dart';

import 'font_family.dart';
import 'text_styles.dart';

/// A Base class to create the basic styles to a `TextStyle`
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

class YucaTypography {
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
      case YucaTextStyles.H0:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.frauncesFont,
          fontSize: 48,
          fontWeight: FontWeight.w900,
          initialHeight: 60,
        );

      case YucaTextStyles.H1:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.frauncesFont,
          fontSize: 36,
          fontWeight: FontWeight.w900,
          initialHeight: 48,
        );

      case YucaTextStyles.H2:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.frauncesFont,
          fontSize: 24,
          fontWeight: FontWeight.w900,
          initialHeight: 32,
        );

      case YucaTextStyles.H3:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.frauncesFont,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          initialHeight: 28,
        );

      case YucaTextStyles.H4:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          initialHeight: 25,
        );

      case YucaTextStyles.H5:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          initialHeight: 20,
        );

      case YucaTextStyles.BODY_LARGE_BOLD:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          initialHeight: 30,
        );

      case YucaTextStyles.BODY_LARGE_REGULAR:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          initialHeight: 30,
        );

      case YucaTextStyles.BODY_MEDIUM_BOLD:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          initialHeight: 24,
        );

      case YucaTextStyles.BODY_MEDIUM_REGULAR:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          initialHeight: 24,
        );

      case YucaTextStyles.BODY_SMALL_BOLD:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          initialHeight: 20,
        );

      case YucaTextStyles.BODY_SMALL_REGULAR:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          initialHeight: 20,
        );

      case YucaTextStyles.PLACEHOLDER_SMALL:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          initialHeight: 20,
        );

      case YucaTextStyles.CTA_BOLD:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          initialHeight: 12,
        );

      case YucaTextStyles.CTA_SEMI:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          initialHeight: 12,
        );

      case YucaTextStyles.CAPTION:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          initialHeight: 18,
        );

      case YucaTextStyles.CAPTION_BOLD:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          initialHeight: 18,
        );

      default:
        return BaseStyleData.fromDynamicHeight(
          fontFamily: FontFamily.montserratFont,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          initialHeight: 20,
        );
    }
  }
}
