import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';

import '../yuca_pulso.dart';

extension SnackbarExtension on BuildContext {
  void showDefault(
    String message, {
    bool isDefaultIcon = true,
    int durationSeconds = 3,
    int animationDurationSeconds = 300,
    Widget icon = const Icon(YucaIcons.check_circle),
    VoidCallback? callback,
    AnimationController? controller,
  }) {
    Navigator.of(this, rootNavigator: true)
        .push(
          showFlushbar(
              context: this,
              flushbar: Flushbar(
                borderRadius: BorderRadius.zero,
                flushbarPosition: FlushbarPosition.BOTTOM,
                padding: const EdgeInsets.all(20),
                backgroundColor: YucaColorStyles.base0,
                messageText: Text(
                  message,
                  style: YucaTypography.create(YucaTextStyles.bodySmallRegular, color: YucaColorStyles.base100),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: isDefaultIcon
                      ? const Icon(
                          YucaIcons.check,
                          color: YucaColorStyles.base100,
                        )
                      : icon,
                ),
                duration: Duration(seconds: durationSeconds),
                forwardAnimationCurve: Curves.easeInOutExpo,
                reverseAnimationCurve: Curves.easeInOutExpo,
                animationDuration: Duration(milliseconds: animationDurationSeconds),
                progressIndicatorBackgroundColor: YucaColorStyles.base100,
                showProgressIndicator: true,
                progressIndicatorController: controller,
              )),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callback != null) {
                callback();
              }
            },
          ),
        );
  }

  void showDefaultInverted(
    String message, {
    bool isDefaultIcon = true,
    int durationSeconds = 3,
    int animationDurationSeconds = 300,
    Widget icon = const Icon(YucaIcons.check_circle),
    VoidCallback? callback,
    AnimationController? controller,
  }) {
    Navigator.of(this, rootNavigator: true)
        .push(
          showFlushbar(
              context: this,
              flushbar: Flushbar(
                borderRadius: BorderRadius.zero,
                flushbarPosition: FlushbarPosition.BOTTOM,
                padding: const EdgeInsets.all(20),
                backgroundColor: YucaColorStyles.base100,
                messageText: Text(
                  message,
                  style: YucaTypography.create(YucaTextStyles.bodySmallRegular, color: YucaColorStyles.base0),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: isDefaultIcon
                      ? const Icon(
                          YucaIcons.check,
                          color: YucaColorStyles.base0,
                        )
                      : icon,
                ),
                duration: Duration(seconds: durationSeconds),
                forwardAnimationCurve: Curves.easeInOutExpo,
                reverseAnimationCurve: Curves.easeInOutExpo,
                animationDuration: Duration(milliseconds: animationDurationSeconds),
                progressIndicatorBackgroundColor: YucaColorStyles.brandPrimaryDark,
                showProgressIndicator: true,
                progressIndicatorController: controller,
              )),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callback != null) {
                callback();
              }
            },
          ),
        );
  }

  void showSuccess(
    String message, {
    bool isDefaultIcon = true,
    int durationSeconds = 3,
    int animationDurationSeconds = 300,
    Widget icon = const Icon(YucaIcons.check_circle),
    VoidCallback? callback,
    AnimationController? controller,
  }) {
    Navigator.of(this, rootNavigator: true)
        .push(
          showFlushbar(
            context: this,
            flushbar: Flushbar(
              borderRadius: BorderRadius.zero,
              flushbarPosition: FlushbarPosition.BOTTOM,
              padding: const EdgeInsets.all(20),
              backgroundColor: YucaColorStyles.brandPrimaryLighten,
              messageText: Text(
                message,
                style: YucaTypography.create(
                  YucaTextStyles.bodySmallBold,
                  color: YucaColorStyles.brandPrimaryDarkest,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: isDefaultIcon
                    ? const Icon(
                        YucaIcons.list_check,
                        color: YucaColorStyles.statusSuccess,
                      )
                    : icon,
              ),
              duration: Duration(seconds: durationSeconds),
              forwardAnimationCurve: Curves.easeInOutExpo,
              reverseAnimationCurve: Curves.easeInOutExpo,
              animationDuration: Duration(milliseconds: animationDurationSeconds),
              progressIndicatorBackgroundColor: YucaColorStyles.brandPrimaryDark,
              showProgressIndicator: true,
              progressIndicatorController: controller,
            ),
          ),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callback != null) {
                callback();
              }
            },
          ),
        );
  }

  void showError(
    String message, {
    bool isDefaultIcon = true,
    int durationSeconds = 3,
    int animationDurationSeconds = 300,
    Widget icon = const Icon(YucaIcons.error),
    VoidCallback? callback,
    bool isTimeoutError = false,
    AnimationController? controller,
  }) {
    Navigator.of(this)
        .push(
          showFlushbar(
              context: this,
              flushbar: Flushbar(
                margin: const EdgeInsets.all(8),
                borderRadius: BorderRadius.circular(8),
                flushbarPosition: FlushbarPosition.BOTTOM,
                padding: const EdgeInsets.all(20),
                backgroundColor: YucaColorStyles.brandSecondaryLighten,
                messageText: Text(
                  message,
                  style:
                      YucaTypography.create(YucaTextStyles.bodySmallBold, color: YucaColorStyles.brandSecondaryDarkest),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: isDefaultIcon
                      ? Icon(
                          isTimeoutError ? YucaIcons.wifi_off : YucaIcons.error,
                          color: YucaColorStyles.brandSecondaryDark,
                        )
                      : icon,
                ),
                duration: Duration(seconds: durationSeconds),
                forwardAnimationCurve: Curves.easeInOutExpo,
                reverseAnimationCurve: Curves.easeInOutExpo,
                animationDuration: Duration(milliseconds: animationDurationSeconds),
                progressIndicatorBackgroundColor: YucaColorStyles.brandSecondaryDark,
                showProgressIndicator: true,
                progressIndicatorController: controller,
              )),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callback != null) {
                callback();
              }
            },
          ),
        );
  }
}
