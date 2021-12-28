import 'dart:ui';

import 'package:flutter/material.dart';

import 'fonts.dart';
import 'text_styles.dart';

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
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    FontWeight? fontWeight,
  }) {
    dynamic font;
    FontWeight? weight;
    double height;
    double fontSize;
    switch (baseStyle) {
      case YucaTextStyles.H0:
        font = Fonts.frauncesFont;
        fontSize = 48;
        height = 60 / fontSize;
        fontWeight = FontWeight.w900;
        break;
      case YucaTextStyles.H1:
        font = Fonts.frauncesFont;
        fontSize = 36;
        height = 48 / fontSize;
        fontWeight = FontWeight.w900;
        break;
      case YucaTextStyles.H2:
        font = Fonts.frauncesFont;
        fontSize = 24;
        height = 32 / fontSize;
        fontWeight = FontWeight.w900;
        break;
      case YucaTextStyles.H3:
        font = Fonts.frauncesFont;
        fontSize = 20;
        height = 28 / fontSize;
        fontWeight = FontWeight.w400;
        break;
      case YucaTextStyles.H4:
        font = Fonts.montserratFont;
        fontSize = 16;
        height = 25 / fontSize;
        fontWeight = FontWeight.w700;
        break;
      case YucaTextStyles.H5:
        font = Fonts.montserratFont;
        fontSize = 14;
        height = 20 / fontSize;
        fontWeight = FontWeight.w700;
        break;
      case YucaTextStyles.BODY_LARGE_BOLD:
        font = Fonts.montserratFont;
        fontSize = 20;
        weight = FontWeight.w600;
        height = 30 / fontSize;
        break;
      case YucaTextStyles.BODY_LARGE_REGULAR:
        font = Fonts.montserratFont;
        fontSize = 20;
        weight = FontWeight.w400;
        decoration = TextDecoration.none;
        height = 30 / fontSize;
        break;
      case YucaTextStyles.BODY_MEDIUM_BOLD:
        font = Fonts.montserratFont;
        fontSize = 16;
        weight = FontWeight.w600;
        decoration = TextDecoration.none;
        height = 24 / fontSize;
        break;
      case YucaTextStyles.BODY_MEDIUM_REGULAR:
        font = Fonts.montserratFont;
        fontSize = 16;
        weight = FontWeight.w600;
        decoration = TextDecoration.none;
        height = 24 / fontSize;
        break;
      case YucaTextStyles.BODY_SMALL_BOLD:
        font = Fonts.montserratFont;
        fontSize = 14;
        weight = FontWeight.w600;
        decoration = TextDecoration.none;
        height = 20 / fontSize;
        break;
      case YucaTextStyles.BODY_SMALL_REGULAR:
        font = Fonts.montserratFont;
        fontSize = 14;
        weight = FontWeight.w400;
        decoration = TextDecoration.none;
        height = 20 / fontSize;
        break;
      case YucaTextStyles.PLACEHOLDER_SMALL:
        font = Fonts.montserratFont;
        fontSize = 14;
        weight = FontWeight.w400;
        decoration = TextDecoration.none;
        height = 20 / fontSize;
        break;
      case YucaTextStyles.CTA_BOLD:
        font = Fonts.montserratFont;
        fontSize = 12;
        weight = FontWeight.w700;
        decoration = TextDecoration.none;
        height = 12 / fontSize;
        break;
      case YucaTextStyles.CTA_SEMI:
        font = Fonts.montserratFont;
        fontSize = 12;
        weight = FontWeight.w600;
        decoration = TextDecoration.none;
        height = 12 / fontSize;
        break;
      case YucaTextStyles.CAPTION:
        font = Fonts.montserratFont;
        fontSize = 12;
        weight = FontWeight.w400;
        decoration = TextDecoration.none;
        height = 18 / fontSize;
        break;
      case YucaTextStyles.CAPTION_BOLD:
        font = Fonts.montserratFont;
        fontSize = 12;
        weight = FontWeight.w500;
        decoration = TextDecoration.none;
        height = 18 / fontSize;
        break;
      default:
        font = Fonts.montserratFont;
        fontSize = 14;
        weight = FontWeight.w400;
        decoration = TextDecoration.none;
        height = 20 / fontSize;
        break;
    }
    return TextStyle(
      fontFamily: font,
      package: 'yuca_pulso',
      fontWeight: fontWeight ?? weight,
      height: height,
      fontSize: fontSize,
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
}
