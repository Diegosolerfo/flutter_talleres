import 'package:flutter/material.dart'; // Es el paquete principal de Flutter
void main() => runApp(MyApp());// Función principal que inicia la aplicación


class MyApp extends StatelessWidget { // Clase principal de la aplicación que extiende StatelessWidget
// StatelessWidget se usa para widgets que no cambian de estado
 @override// Este override sobreescribe el método build de StatelessWidget
 Widget build(BuildContext context) {//Es el método que construye la interfaz de usuario
   return MaterialApp(// MaterialApp es un widget que envuelve varias funcionalidades de la aplicación
     home: Scaffold( // Scaffold proporciona una estructura básica para la aplicación
       appBar: AppBar( // AppBar es la barra de navegación superior
         title: Text('Home Page'),// Título de la barra de navegación
       ),
       body: Center( // Center centra su widget hijo dentro de sí mismo
         child: Text('Hello, World!'), // Texto que se muestra en el centro de la pantalla
       ),
     ),
   );
 }
}
