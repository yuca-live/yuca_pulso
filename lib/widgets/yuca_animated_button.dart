import 'package:flutter/material.dart';

import '../yuca_pulso.dart';
import 'loading_progress.dart';

class YucaAnimatedButton extends StatefulWidget {
  final RoundedLoadingButtonController controller;
  final VoidCallback? onPressed;
  final String? buttonText;
  final double? height;
  final double? width;
  final bool? isDisabled;
  final Color? buttonColor;
  final Color? textColor;

  final bool enabled;
  final bool isButtonLink;
  final Widget? icon;
  final BorderRadius? borderRadius;
  final MainAxisAlignment? alignContent;
  final StyledButtonIconSide iconSide;
  final bool isPrimary;

  const YucaAnimatedButton({
    required this.controller,
    required this.onPressed,
    required this.buttonText,
    this.height = 50,
    this.width = 300,
    this.isDisabled = false,
    this.buttonColor,
    this.textColor,
    this.enabled = true,
    this.isButtonLink = false,
    this.icon,
    this.borderRadius,
    this.alignContent,
    this.iconSide = StyledButtonIconSide.right,
    this.isPrimary = true,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => YucaAnimatedButtonState();
}

class YucaAnimatedButtonState extends State<YucaAnimatedButton> with TickerProviderStateMixin {
  late AnimationController _buttonController;
  late Animation _squeezeAnimation;

  bool _isError = false;

  @override
  Widget build(BuildContext context) {
    final isEnabled = (widget.enabled && widget.onPressed != null);

    var _loader = StyledLoadingProgress(
      color: widget.isPrimary ? YucaColorStyles.base0 : YucaColorStyles.brandPrimaryDark,
    );

    final itemsContent = [
      if (widget.buttonText != null) Text(widget.buttonText ?? ''),
      if (widget.buttonText != null && widget.icon != null) const SizedBox(width: 12),
      if (widget.icon != null) widget.icon ?? const SizedBox.shrink(),
    ];

    var _initialButton = TextButton(
      onPressed: widget.isDisabled ?? false
          ? null
          : () async {
              if (_squeezeAnimation.value < 150) {
                return;
              } else {
                FocusScope.of(context).requestFocus(FocusNode());
                _start();
              }
            },
      child: Padding(
          padding: widget.icon != null && widget.buttonText == null
              ? const EdgeInsets.all(0) //Case only icon
              : widget.icon == null
                  ? const EdgeInsets.symmetric(horizontal: 24) //Case icon and text
                  : const EdgeInsets.symmetric(horizontal: 24), // Case only Text
          child: Row(
            mainAxisAlignment: widget.alignContent ?? MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _squeezeAnimation.value > 150
                ? widget.iconSide == StyledButtonIconSide.right
                    ? itemsContent
                    : itemsContent.reversed.toList()
                : [_loader],
          )),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: widget.borderRadius ??
              const BorderRadius.all(
                Radius.circular(6),
              ),
        ),
        primary: widget.isPrimary ? YucaColorStyles.base0 : YucaColorStyles.brandPrimaryDark,
        backgroundColor: widget.isButtonLink
            ? Colors.transparent
            : !isEnabled && widget.isPrimary == true
                ? YucaColorStyles.base20
                : !isEnabled && widget.isPrimary == false
                    ? YucaColorStyles.base0
                    : widget.isPrimary
                        ? YucaColorStyles.brandPrimaryDark
                        : YucaColorStyles.brandPrimaryLighten,
        textStyle: YucaTypography.create(
          YucaTextStyles.bodySmallBold,
          fontWeight: FontWeight.w600,
        ),
        onSurface: !isEnabled && widget.isPrimary == true ? YucaColorStyles.base0 : YucaColorStyles.base20,
      ),
    );

    return SizedBox(height: widget.height, child: Center(child: _isError ? _initialButton : _initialButton));
  }

  @override
  void initState() {
    super.initState();

    _initialButtonState();

    widget.controller._addListeners(
      _start,
      _stop,
    );
  }

  @override
  void dispose() {
    _buttonController.dispose();
    super.dispose();
  }

  _start() {
    _buttonController.forward();
  }

  _stop() {
    _isError = false;
    _buttonController.reverse();
  }

  _initialButtonState() {
    _buttonController = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);

    _squeezeAnimation = Tween<double>(begin: widget.width, end: widget.height)
        .animate(CurvedAnimation(parent: _buttonController, curve: Curves.easeInOutExpo));
    _squeezeAnimation.addListener(() {
      setState(() {});
    });

    _squeezeAnimation.addStatusListener((state) {
      if (state == AnimationStatus.completed) {
        widget.onPressed!();
      }
    });
  }
}

class RoundedLoadingButtonController {
  late VoidCallback _startListener;
  late VoidCallback _stopListener;

  _addListeners(
    VoidCallback startListener,
    VoidCallback stopListener,
  ) {
    _startListener = startListener;
    _stopListener = stopListener;
  }

  start() {
    _startListener();
  }

  stop() {
    _stopListener();
  }
}
