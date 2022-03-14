import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        title: 'Snackbar/Toast',
      ),
      backgroundColor: YucaColorStyles.base0,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            YucaButton(
              text: 'Snackbar Erro',
              action: () {
                context.showError('messagem de erro!');
              },
            ),
            const SizedBox(height: 20),
            YucaButton(
              text: 'Snackbar Sucesso',
              action: () {
                context.showSuccess('messagem sucesso!');
              },
            ),
            const SizedBox(height: 20),
            YucaButton(
              text: 'Snackbar Default',
              action: () {
                context.showDefault('messagem default!');
              },
            ),
            const SizedBox(height: 20),
            YucaButton(
              text: 'Snackbar Default Inverted',
              action: () {
                context.showDefaultInverted('message default!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
