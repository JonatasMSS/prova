import 'package:flutter/material.dart';
import 'package:prova_2/src/descPage.dart';
import 'package:prova_2/src/home.dart';
import 'src/ImoveisAlugar.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/descPage': (context) => DescPage(),
        '/imoveisAlug': (context) => ImoveisAlug(),
        '/home': (context) => HomeApp(),
      },
      initialRoute: '/home',
    );
  }
}
