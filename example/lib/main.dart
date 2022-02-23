import 'package:flutter/material.dart';
import 'package:yuca_pulso/widgets/yuca_app_bar.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        withCloseIcon: false,
        allowBackIcon: false,
        withHelpIcon: true,
        helpOnTap: () {},
        title: 'Yuca AppBar',
      ),
      body: Container(),
    );
  }
}
