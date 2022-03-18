import 'package:example/screens/alert_message_screen.dart';
import 'package:example/screens/app_bar_screen.dart';
import 'package:example/screens/buttons_screen.dart';
import 'package:example/screens/colors_screen.dart';
import 'package:example/screens/snackbar_screen.dart';
import 'package:example/screens/tiles_screen.dart';
import 'package:example/screens/typography_screen.dart';
import 'package:example/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
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
      body: Row(
        children: [
          Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text(
                    'Design System Yuca',
                    style: YucaTypography.create(YucaTextStyles.headingTwo),
                  ),
                ),
                const DrawerTile(
                  text: 'AppBar',
                  page: AppBarScreen(),
                ),
                const DrawerTile(
                  text: 'Buttons',
                  page: ButtonsScreen(),
                ),
                const DrawerTile(
                  text: 'Snackbar/Toast',
                  page: SnackbarScreen(),
                ),
                const DrawerTile(
                  text: 'Tiles',
                  page: TilesScreen(),
                ),
                const DrawerTile(
                  text: 'Alert message',
                  page: AlertMessageScreen(),
                ),
                const DrawerTile(
                  text: 'Colors',
                  page: ColorsScreen(),
                ),
                const DrawerTile(
                  text: 'Typography',
                  page: TypographyScreen(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            width: MediaQuery.of(context).size.aspectRatio * 200,
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Este site tem o intuito para demonstrar e visualizar o que temos atualmente no design system utilizado no mobile.\n Sendo Assim, todo e qualquer codigo é restrito e de uso apenas da Yuca e seus funcionarios. Caso surgir alguma duvida entre em contato com o time de mobile via slack.',
                      style: YucaTypography.create(YucaTextStyles.bodyMediumRegular),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
