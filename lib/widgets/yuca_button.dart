import 'package:flutter/material.dart';

import '../yuca_pulso.dart';

enum StyledButtonIconSide { left, right }

class YucaButton extends StatelessWidget {
  final String? text;
  final VoidCallback? action;
  final bool enabled;
  final Color? textColor;
  final bool isButtonLink;
  final Widget? icon;
  final BorderRadius? borderRadius;
  final MainAxisAlignment? alignContent;
  final StyledButtonIconSide iconSide;
  final bool isPrimary;
  final Color? buttonColor;
  final Color? backgroundColor;

  const YucaButton({
    Key? key,
    this.text,
    this.action,
    this.enabled = true,
    this.textColor,
    this.isButtonLink = false,
    this.icon,
    this.borderRadius,
    this.alignContent,
    this.iconSide = StyledButtonIconSide.right,
    this.isPrimary = true,
    this.buttonColor,
    this.backgroundColor,
  })  : assert(text != null || icon != null, '\n[ERROR]: One of the text or icon param must be informed at least'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final isEnabled = (enabled && action != null);

    final itemsContent = [
      if (text != null) Text(text ?? ''),
      if (text != null && icon != null) const SizedBox(width: 12),
      if (icon != null) icon ?? const SizedBox.shrink(),
    ];

    return Padding(
      padding: icon != null && text == null
          ? const EdgeInsets.all(14) // Case only icon
          : EdgeInsets.zero, // Case has text
      child: TextButton(
        onPressed: isEnabled ? action : null,
        child: Padding(
          padding: icon != null && text == null
              ? const EdgeInsets.all(0) //Case only icon
              : icon == null
                  ? const EdgeInsets.symmetric(vertical: 10, horizontal: 24) // Case only Text
                  : const EdgeInsets.symmetric(vertical: 10, horizontal: 24), // Case icon and text
          child: Row(
            mainAxisAlignment: alignContent ?? MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: iconSide == StyledButtonIconSide.right ? itemsContent : itemsContent.reversed.toList(),
          ),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                const BorderRadius.all(
                  Radius.circular(6),
                ),
          ),
          primary: buttonColor ?? (isPrimary ? YucaColorStyles.base0 : YucaColorStyles.brandPrimaryDark),
          backgroundColor: backgroundColor ??
              (isButtonLink
                  ? Colors.transparent
                  : !isEnabled && isPrimary == true
                      ? YucaColorStyles.base20
                      : !isEnabled && isPrimary == false
                          ? YucaColorStyles.base0
                          : isPrimary
                              ? YucaColorStyles.brandPrimaryDark
                              : YucaColorStyles.brandPrimaryLighten),
          textStyle: YucaTypography.create(
            YucaTextStyles.bodySmallBold,
            fontWeight: FontWeight.w600,
          ),
          onSurface: !isEnabled && isPrimary == true ? YucaColorStyles.base0 : YucaColorStyles.base20,
        ),
      ),
    );
  }
}
