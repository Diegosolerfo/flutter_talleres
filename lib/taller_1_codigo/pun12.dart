import 'package:flutter/material.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Diego Soler'),
        ),
        body: Container(
          color: Colors.blue,
          width: 300,
          height: 300,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(  
              'Hola Diego Alineado',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
