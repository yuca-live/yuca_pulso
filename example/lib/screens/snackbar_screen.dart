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
              text: 'Show Snackbar Error',
              action: () {
                context.showError('message error!');
              },
            ),
            const SizedBox(height: 20),
            YucaButton(
              text: 'Show Snackbar Success',
              action: () {
                context.showSuccess('message success!');
              },
            ),
            const SizedBox(height: 20),
            YucaButton(
              text: 'Show Snackbar Default',
              action: () {
                context.showDefault('message default!');
              },
            ),
            const SizedBox(height: 20),
            YucaButton(
              text: 'Show Snackbar Default Inverted',
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
