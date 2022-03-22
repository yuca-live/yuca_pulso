/// An Widget to show a message to alert the user with an icon and a text message
/// with an background.
///
/// The Alert could have or not an action when the user taps. this is controlled
///  by the [hasAction], [onTap] and [actionTitle].
///
/// The [backgroundColor] and [icon] is changed by the [YucaAlertState]
///
/// Currently, we have four different types of states:
///
/// `error`, `info`, `success`, `warning`.

library yuca_pulso;

import 'package:flutter/material.dart';

import '../yuca_pulso.dart';

/// This enum controls the [Icon] and the [Color] of the Alerts.
enum YucaAlertState {
  error,
  info,
  success,
  warning,
}

class YucaAlertMessage extends StatelessWidget {
  final String description;
  final VoidCallback? onTap;
  final String? actionTitle;
  final bool hasAction;
  final YucaAlertState state;

  const YucaAlertMessage({
    required this.description,
    required this.state,
    this.onTap,
    this.actionTitle,
    this.hasAction = false,
    Key? key,
  })  : assert(!hasAction || (hasAction == true && onTap != null),
            'The onTap cannot be null when the alert has an action'),
        assert(!hasAction || (hasAction == true && actionTitle != null),
            'The actionTitle cannot be null when the alert has an action'),
        super(key: key);

  Color get _changeColor {
    switch (state) {
      case YucaAlertState.error:
        return YucaColorStyles.statusError;
      case YucaAlertState.success:
        return YucaColorStyles.statusSuccess;
      case YucaAlertState.info:
        return YucaColorStyles.statusInfo;
      case YucaAlertState.warning:
        return YucaColorStyles.statusAlert;
      default:
        return YucaColorStyles.base0;
    }
  }

  Color get _changeBackgroundColor {
    switch (state) {
      case YucaAlertState.error:
        return YucaColorStyles.statusErrorBase;
      case YucaAlertState.success:
        return YucaColorStyles.statusSuccessBase;
      case YucaAlertState.info:
        return YucaColorStyles.statusInfoBase;
      case YucaAlertState.warning:
        return YucaColorStyles.statusAlertBase;
      default:
        return YucaColorStyles.base0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const YucaSpacingEdgeInsets.allSmall(),
      decoration: BoxDecoration(
        borderRadius: const YucaBorderRadius.small(),
        color: _changeBackgroundColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                YucaIcons.error,
                color: _changeColor,
              ),
              const YucaSpacingSize.widthSmall(),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: YucaTypography.create(
                        YucaTextStyles.caption,
                        color: YucaColorStyles.base80,
                      ),
                    ),
                    Visibility(
                      visible: hasAction,
                      child: Column(
                        children: [
                          const YucaSpacingSize.heightExtraSmall(),
                          GestureDetector(
                            onTap: onTap,
                            child: Text(
                              actionTitle ?? '',
                              style: YucaTypography.create(
                                YucaTextStyles.bodySmallBold,
                                color: _changeColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
