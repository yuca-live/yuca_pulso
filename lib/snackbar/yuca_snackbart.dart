import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

extension SnackbarExtension on BuildContext {
  void showDefault(
    String message, {
    bool isDefaultIcon = true,
    int durationSeconds = 3,
    Widget icon = const Icon(YucaIcons.check_circle),
    VoidCallback? callback,
  }) {
    Navigator.of(this, rootNavigator: true)
        .push(
          showFlushbar(
              context: this,
              flushbar: Flushbar(
                margin: const EdgeInsets.all(30),
                borderRadius: BorderRadius.circular(8),
                flushbarPosition: FlushbarPosition.BOTTOM,
                padding: const EdgeInsets.all(20),
                backgroundColor: YucaColorStyles.base0,
                messageText: Text(
                  message,
                  style: YucaTypography.create(YucaTextStyles.BODY_SMALL_REGULAR, color: YucaColorStyles.base100),
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
    Widget icon = const Icon(YucaIcons.check_circle),
    VoidCallback? callback,
  }) {
    Navigator.of(this, rootNavigator: true)
        .push(
          showFlushbar(
              context: this,
              flushbar: Flushbar(
                margin: const EdgeInsets.all(30),
                borderRadius: BorderRadius.circular(8),
                flushbarPosition: FlushbarPosition.BOTTOM,
                padding: const EdgeInsets.all(20),
                backgroundColor: YucaColorStyles.base100,
                messageText: Text(
                  message,
                  style: YucaTypography.create(YucaTextStyles.BODY_SMALL_REGULAR, color: YucaColorStyles.base0),
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
    Widget icon = const Icon(YucaIcons.check_circle),
    VoidCallback? callback,
  }) {
    Navigator.of(this, rootNavigator: true)
        .push(
          showFlushbar(
              context: this,
              flushbar: Flushbar(
                margin: const EdgeInsets.all(30),
                borderRadius: BorderRadius.circular(8),
                flushbarPosition: FlushbarPosition.BOTTOM,
                padding: const EdgeInsets.all(20),
                backgroundColor: YucaColorStyles.brandPrimaryMedium,
                messageText: Text(
                  message,
                  style: YucaTypography.create(YucaTextStyles.BODY_SMALL_REGULAR, color: YucaColorStyles.base0),
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

  void showError(
    String message, {
    bool isDefaultIcon = true,
    int durationSeconds = 3,
    Widget icon = const Icon(YucaIcons.check_circle),
    VoidCallback? callback,
    bool isTimeoutError = false,
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
                backgroundColor: YucaColorStyles.statusError,
                messageText: Text(
                  message,
                  style: YucaTypography.create(YucaTextStyles.BODY_SMALL_REGULAR, color: YucaColorStyles.base0),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: isDefaultIcon
                      ? Icon(
                          isTimeoutError ? YucaIcons.wifi_off : YucaIcons.close,
                          color: YucaColorStyles.base0,
                        )
                      : icon,
                ),
                duration: Duration(seconds: durationSeconds),
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
