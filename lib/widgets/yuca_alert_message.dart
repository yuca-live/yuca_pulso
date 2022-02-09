import 'package:flutter/material.dart';

import '../yuca_pulso.dart';

class YucaAlertMessage {
  final String? description;
  final VoidCallback? onTap;
  final String? actionTitle;
  final bool hasAction;

  YucaAlertMessage({
    this.description,
    this.onTap,
    this.actionTitle,
    this.hasAction = false,
  });

  error() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: YucaColorStyles.statusErrorBase,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                YucaIcons.error,
                color: YucaColorStyles.statusError,
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      description ?? '',
                      style: YucaTypography.create(YucaTextStyles.caption, color: YucaColorStyles.base80),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Visibility(
                          visible: hasAction,
                          child: GestureDetector(
                            onTap: onTap,
                            child: Text(
                              actionTitle ?? '',
                              style: YucaTypography.create(
                                YucaTextStyles.bodySmallBold,
                                color: YucaColorStyles.statusError,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  warning() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: YucaColorStyles.statusAlertBase,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                YucaIcons.alert_system,
                color: YucaColorStyles.statusAlert,
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      description ?? '',
                      style: YucaTypography.create(YucaTextStyles.caption, color: YucaColorStyles.base80),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Visibility(
                          visible: hasAction,
                          child: GestureDetector(
                            onTap: onTap,
                            child: Text(
                              actionTitle ?? '',
                              style: YucaTypography.create(
                                YucaTextStyles.bodySmallBold,
                                color: YucaColorStyles.statusAlert,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  info() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: YucaColorStyles.statusInfoBase,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                YucaIcons.info,
                color: YucaColorStyles.statusInfo,
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      description ?? '',
                      style: YucaTypography.create(YucaTextStyles.caption, color: YucaColorStyles.base80),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Visibility(
                          visible: hasAction,
                          child: GestureDetector(
                            onTap: onTap,
                            child: Text(
                              actionTitle ?? '',
                              style: YucaTypography.create(
                                YucaTextStyles.bodySmallBold,
                                color: YucaColorStyles.statusInfo,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  success() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: YucaColorStyles.statusSuccessBase,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                YucaIcons.check,
                color: YucaColorStyles.statusSuccess,
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      description ?? '',
                      style: YucaTypography.create(YucaTextStyles.caption, color: YucaColorStyles.base80),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Visibility(
                          visible: hasAction,
                          child: GestureDetector(
                            onTap: onTap,
                            child: Text(
                              actionTitle ?? '',
                              style: YucaTypography.create(
                                YucaTextStyles.bodySmallBold,
                                color: YucaColorStyles.statusSuccess,
                              ),
                            ),
                          )),
                    )
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
