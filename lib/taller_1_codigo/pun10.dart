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
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 50),
            Icon(Icons.airplanemode_active, color: Colors.grey, size: 50),
            Icon(Icons.home, color: Colors.red, size: 50),
            Icon(Icons.favorite, color: Colors.pink, size: 50),
            Icon(Icons.music_note, color: Colors.green, size: 50),
            Icon(Icons.school, color: Colors.blue, size: 50),
          ],
        ),
      ),
    );
  }
}
