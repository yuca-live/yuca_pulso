import 'package:flutter/material.dart';

import '../yuca_pulso.dart';

enum YucaAlertState { error, info, success, warning }

class YucaAlertMessage {
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
  });

  Container build() {
    return Container(
      padding: const YucaSpacingEdgeInsets.allSmall(),
      decoration: BoxDecoration(
        borderRadius: const YucaBorderRadius.small(),
        color: _changeBackgroundColor(state),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                YucaIcons.error,
                color: _changeColor(state),
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
                    const YucaSpacingSize.heightExtraSmall(),
                    Visibility(
                      visible: hasAction,
                      child: GestureDetector(
                        onTap: onTap,
                        child: Text(
                          actionTitle ?? '',
                          style: YucaTypography.create(
                            YucaTextStyles.bodySmallBold,
                            color: _changeColor(state),
                          ),
                        ),
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

  Color? _changeColor(YucaAlertState state) {
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

  Color? _changeBackgroundColor(YucaAlertState state) {
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
}
