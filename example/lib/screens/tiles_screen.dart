import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class TilesScreen extends StatelessWidget {
  const TilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: YucaAppBar(
          context: context,
          title: 'Tiles',
        ),
        backgroundColor: YucaColorStyles.base0,
        body: WidgetWithCodeView(
          child: _page(),
          sourceFilePath: 'lib/screens/tiles_screen.dart',
        ));
  }

  Widget _page() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              YucaTile(
                title: 'Titulo',
                description: 'Descrição',
                icon: YucaIcons.default_icon,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              YucaTile(
                title: 'Titulo',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              YucaTile(
                title: 'Titulo',
                description: 'Descrição',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              YucaTile(
                title: 'Titulo',
                description: 'Descrição',
                icon: YucaIcons.default_icon,
                enableChevron: false,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              YucaTile(
                title: 'Titulo',
                onTap: () {},
                enableChevron: false,
              ),
              const SizedBox(height: 20),
              YucaTile(
                title: 'Titulo',
                description: 'Descrição',
                onTap: () {},
                enableChevron: false,
              ),
              const SizedBox(height: 20),
              YucaTile(
                title: 'Label',
                onTap: () {},
                enableChevron: false,
                titleIsLabel: true,
              ),
              const SizedBox(height: 20),
              YucaTile(
                title: 'label',
                onTap: () {},
                enableChevron: true,
                titleIsLabel: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
