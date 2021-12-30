/// All The colors supported by the `Design System`
/// We set the class into the abstract mode to prevent the user creates an instance without value,
/// but keeping the support to be extended in the future.
library yuca_pulso;

import 'package:flutter/material.dart' show Color;

abstract class YucaColorStyles {
  /// Brand Primary
  static const brandPrimaryDarkest = Color(0xFF1F4E4D);
  static const brandPrimaryDark = Color(0xFF3A8071);
  static const brandPrimaryMedium = Color(0xFF13C081);
  static const brandPrimaryLight = Color(0xFFC9E2C9);
  static const brandPrimaryLighten = Color(0xFFF2FBF7);

  /// Brand Secondary
  static const brandSecondaryDarkest = Color(0xFF773017);
  static const brandSecondaryDark = Color(0xFFBC5D5C);
  static const brandSecondaryMedium = Color(0xFFF19997);
  static const brandSecondaryLight = Color(0xFFFBE0E0);
  static const brandSecondaryLighten = Color(0xFFFEF5F5);

  /// Brand Support
  static const brandSupportDarkest = Color(0xFF520F6D);
  static const brandSupportDark = Color(0xFF742794);
  static const brandSupportMedium = Color(0xFFDDB1FA);
  static const brandSupportLight = Color(0xFFF1DDFF);
  static const brandSupportLighten = Color(0xFFFDFAFF);

  /// Alternative Primary
  static const alternativePrimaryDarkest = Color(0xFF102436);
  static const alternativePrimaryDark = Color(0xFF397787);
  static const alternativePrimaryMedium = Color(0xFF53B8CE);
  static const alternativePrimaryLight = Color(0xFFBAE3EB);
  static const alternativePrimaryLighten = Color(0xFFEEF7FB);

  /// Alternative Secondary
  static const alternativeSecondaryDarkest = Color(0xFF00745F);
  static const alternativeSecondaryDark = Color(0xFF05B797);
  static const alternativeSecondaryMedium = Color(0xFF65DAC5);
  static const alternativeSecondaryLight = Color(0xFF85F4E0);
  static const alternativeSecondaryLighten = Color(0xFFF1FFFD);

  /// Alternative Support
  static const alternativeSupportDarkest = Color(0xFFCB7C5A);
  static const alternativeSupportDark = Color(0xFFDFAB7C);
  static const alternativeSupportMedium = Color(0xFFF9E8C8);
  static const alternativeSupportLight = Color(0xFFFAF1E6);
  static const alternativeSupportLighten = Color(0xFFFDFAF7);

  /// Base
  static const base100 = Color(0xFF000000);
  static const base80 = Color(0xFF425158);
  static const base60 = Color(0xFF8E9BA1);
  static const base40 = Color(0xFFBBC3C7);
  static const base20 = Color(0xFFDDE1E3);
  static const base10 = Color(0xFFF4F5F6);
  static const base0 = Color(0xFFFFFFFF);

  /// Status
  static const statusSuccess = Color(0xFF13C081);
  static const statusInfo = Color(0xFF53B8CE);
  static const statusAlert = Color(0xFFFFB020);
  static const statusError = Color(0xFFD1436E);
  static const statusSuccessBase = Color(0xFFF2FBF7);
  static const statusInfoBase = Color(0xFFEEF7FB);
  static const statusAlertBase = Color(0xFFFFFAF1);
  static const statusErrorBase = Color(0xFFFDF4F4);

  /// Action
  static const actionPrimaryDark = Color(0xFF742794);
  static const actionPrimaryMedium = Color(0xFF9F3FC7);
  static const actionSecondaryDark = Color(0xFF00B774);
  static const actionSecondaryMedium = Color(0xFF14CD8A);

  /// Elevations
  /// We use the RGBO color constructor because the Hex constructor cannot controls the opacity
  /// without losing the constant property.
  static const elevationLevel1 = Color.fromRGBO(0, 0, 0, 0.05);
  static const elevationLevel2 = Color.fromRGBO(0, 0, 0, 0.1);
  static const elevationNegativeSpread = Color.fromRGBO(0, 0, 0, 0.05);
}
