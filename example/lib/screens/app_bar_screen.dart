import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        title: 'Yuca App Bar',
        allowBackIcon: true,
      ),
      backgroundColor: YucaColorStyles.base40,
      body: WidgetWithCodeView(
        child: _page(context),
        sourceFilePath: '../lib/screens/app_bar_screen.dart',
      ),
    );
  }

  Widget _page(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Variações da AppBar',
            style: YucaTypography.create(YucaTextStyles.headingTwo, color: YucaColorStyles.base100),
          ),
          const SizedBox(height: 20),
          YucaAppBar(
            context: context,
            title: 'Voltar',
          ),
          const SizedBox(height: 20),
          YucaAppBar(
            context: context,
            title: 'Fechar',
            allowBackIcon: false,
            withCloseIcon: true,
          ),
          const SizedBox(height: 20),
          YucaAppBar(
            context: context,
            title: 'Voltar e Ajuda',
            allowBackIcon: true,
            withHelpIcon: true,
          ),
          const SizedBox(height: 20),
          YucaAppBar(
            context: context,
            title: 'Ajuda',
            allowBackIcon: false,
            withHelpIcon: true,
          ),
          const SizedBox(height: 20),
          YucaAppBar(
            context: context,
            title: 'Titulo',
            allowBackIcon: false,
            withHelpIcon: false,
          ),
        ],
      ),
    );
  }
}
