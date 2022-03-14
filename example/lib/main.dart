import 'package:example/screens/app_bar_scren.dart';
import 'package:example/screens/snackbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        title: 'Design System',
        allowBackIcon: false,
      ),
      backgroundColor: YucaColorStyles.base0,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YucaButton(
              text: 'AppBar',
              action: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AppBarScreen()));
              },
            ),
            YucaButton(
              text: 'Buttons',
              action: () {},
            ),
            YucaButton(
              text: 'Snackbar/Toast',
              action: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SnackbarScreen()));
              },
            ),
            YucaButton(
              text: 'Tiles',
              action: () {},
            ),
            YucaButton(
              text: 'Alert message',
              action: () {},
            ),
            YucaButton(
              text: 'Colors',
              action: () {},
            ),
            YucaButton(
              text: 'Typography',
              action: () {},
            ),
            YucaButton(
              text: 'Divider',
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
