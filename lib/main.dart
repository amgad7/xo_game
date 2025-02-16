import 'package:flutter/material.dart';
import 'package:xo_game/xo/login.dart';
import 'package:xo_game/xo/xo_game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: LoginScreen.routeName,
     routes: {
        XoGame.routeName:(context)=> XoGame(),
        LoginScreen.routeName:(context)=> LoginScreen(),
     },
    );
  }
}


