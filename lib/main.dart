import 'package:flutter/material.dart';
import 'bingo/bingo.dart';
import 'config/config.dart';
import 'title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const TitlePage(),
        '/bingo': (context) => const BingoPage(),
        '/config':(context) => const ConfigPage(),
      }
    );
  }
}
