import 'package:flutter/material.dart'; // Es el paquete principal de Flutter


void main() => runApp(MyApp()); // Función principal que inicia la aplicación


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Scaffold')),
        body: Center(child: Image.asset('assets/laferrary2013.jpg')),
      ),
    );
  }
}
