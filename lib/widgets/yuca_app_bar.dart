import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class YucaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool allowBackIcon;
  final List<Widget>? actions;
  final Widget? leading;
  final bool withCloseIcon;
  final Color backgroundColor;
  final Color titleColor;
  final Color closeIconColor;
  final VoidCallback? backButtonFunction;
  final VoidCallback? closeButtonFunction;
  final BuildContext context;
  final VoidCallback? helpOnTap;
  final bool withHelpIcon;

  const YucaAppBar({
    Key? key,
    this.title = '',
    this.allowBackIcon = true,
    this.actions,
    this.withCloseIcon = false,
    this.backgroundColor = YucaColorStyles.base0,
    this.titleColor = YucaColorStyles.alternativePrimaryDarkest,
    this.closeIconColor = YucaColorStyles.alternativePrimaryDarkest,
    this.backButtonFunction,
    this.closeButtonFunction,
    this.leading,
    required this.context,
    this.helpOnTap,
    this.withHelpIcon = false,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  List<Widget> get _actionsWidgetList {
    final actionList = actions ?? [];
    if (withCloseIcon) {
      actionList.add(Container(
        padding: const EdgeInsets.only(right: 20),
        child: IconButton(
          icon: Icon(Icons.close, color: closeIconColor),
          onPressed: _onTapClose,
        ),
      ));
    }
    if (withHelpIcon) {
      actionList.add(GestureDetector(
        onTap: helpOnTap,
        child: Container(
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(
            YucaIcons.help,
            color: YucaColorStyles.base100,
          ),
        ),
      ));
    }
    return actionList;
  }

  Widget get _backButton {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: _onTapBack,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: allowBackIcon ? _backButton : leading ?? const SizedBox.shrink(),
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      elevation: 0.0,
      centerTitle: true,
      title: Text(title, style: YucaTypography.create(YucaTextStyles.bodyMediumBold, color: titleColor)),
      actions: _actionsWidgetList,
    );
  }

  void _onTapBack() {
    if (backButtonFunction != null) backButtonFunction!();
    Navigator.of(context).pop();
  }

  void _onTapClose() {
    if (closeButtonFunction != null) closeButtonFunction!();
    Navigator.of(context).pop();
  }
}
