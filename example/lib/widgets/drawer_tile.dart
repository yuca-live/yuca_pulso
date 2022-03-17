import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final Widget page;

  const DrawerTile({
    required this.text,
    required this.page,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
      ),
      trailing: const Icon(
        YucaIcons.next,
        color: YucaColorStyles.base100,
      ),
      onTap: () async {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => page,
        ));
      },
    );
  }
}
