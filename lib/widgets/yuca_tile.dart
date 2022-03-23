import 'package:flutter/material.dart';

import '../yuca_pulso.dart';

class YucaTile extends StatelessWidget {
  final String title;
  final String? description;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color? titleColor;
  final Color? descriptionColor;
  final Color? iconColor;
  final bool titleIsLabel;
  final bool enableChevron;

  const YucaTile({
    Key? key,
    required this.title,
    this.description,
    this.icon,
    this.onTap,
    this.titleColor = YucaColorStyles.base100,
    this.descriptionColor = YucaColorStyles.base100,
    this.iconColor = YucaColorStyles.base100,
    this.titleIsLabel = false,
    this.enableChevron = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: icon != null ? 24 : 26),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon != null
                    ? Icon(
                        icon,
                        color: iconColor,
                      )
                    : const SizedBox.shrink(),
                icon != null ? const SizedBox(width: 24) : const SizedBox.shrink(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: YucaTypography.create(
                        titleIsLabel ? YucaTextStyles.bodySmallRegular : YucaTextStyles.bodySmallBold,
                        color: titleColor,
                      ),
                    ),
                    description != null ? const SizedBox(height: 4) : const SizedBox.shrink(),
                    description != null
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              description ?? '',
                              style: YucaTypography.create(
                                YucaTextStyles.bodySmallRegular,
                                color: descriptionColor,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                const SizedBox(width: 24)
              ],
            ),
            enableChevron ? const Icon(YucaIcons.next) : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
