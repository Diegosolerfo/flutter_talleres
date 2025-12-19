import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Child y Children')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue.shade100,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón 3'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
