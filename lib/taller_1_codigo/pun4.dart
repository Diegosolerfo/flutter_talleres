import 'package:flutter/material.dart'; // Es el paquete principal de Flutter


void main() => runApp(MyApp()); // Función principal que inicia la aplicación


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Scaffold')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Rojo', style: TextStyle(fontSize: 24, color: Colors.red)),
            Text(
              'Color verdecito :(',
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
            Text(
              'Color triste',
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
