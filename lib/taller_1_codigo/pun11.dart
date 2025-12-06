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
        body: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
            Positioned(
              top: 50,
              left: 50,
              child:  
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              top: 100,
              left: 100,
              child:  
                Text(
                  'Ensima del contenedor rojo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

