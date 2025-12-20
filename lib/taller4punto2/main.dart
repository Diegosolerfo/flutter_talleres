import 'package:flutter/material.dart';
import 'config.dart';
import 'info.dart';
import 'inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/inicio',
      routes: {
        '/inicio': (context) => const HomePage(),
        '/info': (context) => const InfoPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}