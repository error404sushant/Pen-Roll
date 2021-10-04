import 'package:flutter/material.dart';
import 'package:roll_pen/resources/home/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home":(context)=>HomeScreen()
      },
      initialRoute: '/home',
    );
  }
}
