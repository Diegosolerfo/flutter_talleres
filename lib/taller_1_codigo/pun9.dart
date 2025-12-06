import 'package:flutter/material.dart'; // Es el paquete principal de Flutter
void main() => runApp(MyApp());// Función principal que inicia la aplicación


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Diego Soler'),
        ),
        body: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                print('Presionaste el botón 1');
              },
              child: Text('Botón 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Presionaste el botón 2');
              },
              child: Text('Botón 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Presionaste el botón 3');
              },
              child: Text('Botón 3'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Presionaste el botón 4');
              },
              child: Text('Botón 4'),
            ),
          ],
        ),
      ),
    );
  }
}
