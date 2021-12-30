/// List the `Font Families` supported by the Design System
library yuca_pulso;

class YucaFontFamily {
  /// By creating a empty private constructor, we prevent the user from extends
  ///  or creates an empty instance from this class.
  YucaFontFamily._();

  /// Used in some Headlines texts
  static const fraunces = 'Fraunces';

  /// Basically used in all the texts.
  static const montserrat = 'Montserrat';

  /// Returns a list with all the supported font families.
  /// To use in a [TextStyle] or [AppTheme], please check out the font family attribute itself.
  /// Example:
  /// Text('data', style: TextStyle(fontFamily: FontFamily.frauncesFont));
  static const list = [fraunces, montserrat];
}
