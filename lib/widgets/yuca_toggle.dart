import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yuca_pulso/colors/color_styles.dart';

class YucaToggle extends StatelessWidget {
  const YucaToggle({Key? key, this.value, this.onChanged}) : super(key: key);

  final bool? value;
  final Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: value ?? false,
      onChanged: onChanged,
      activeColor: YucaColorStyles.brandPrimaryMedium,
      trackColor: YucaColorStyles.base20,
      thumbColor: YucaColorStyles.base0,
    );
  }
}
