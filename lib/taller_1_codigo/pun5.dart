import 'package:flutter/material.dart'; // Es el paquete principal de Flutter


void main() => runApp(MyApp()); // Función principal que inicia la aplicación


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Scaffold')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.airplanemode_active, color: Colors.grey),
            Icon(Icons.woman, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
