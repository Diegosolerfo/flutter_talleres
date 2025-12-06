import 'package:flutter/material.dart'; // Es el paquete principal de Flutter
void main() => runApp(MyApp());// Función principal que inicia la aplicación


class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context){
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Flutter Scaffold'),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               'taller flutter de soler',
               style: TextStyle(fontSize: 30, color: Colors.green),
             ),
      
             Container(
               margin: EdgeInsets.only(top: 20),
               padding: EdgeInsets.all(15),
               color: Colors.blue,
               child: Text(
                 'Es un buen taller :) aprendiendo mucho',
                 style: TextStyle(fontSize: 20, color: Colors.white),
               ),
             ),
           ],
         ),
       ),
     ),
   );
 }
}

