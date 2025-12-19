import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    print('initState(): Widget creado');
  }

  @override
  void dispose() {
    print('dispose(): Widget eliminado');
    super.dispose();
  }

  void addItem() {
    setState(() {
      items.add('Elemento ${items.length + 1}');
      print('setState(): Elemento agregado');
    });
  }

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
      print('setState(): Elemento eliminado');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build(): Construyendo UI');

    return Scaffold(
      appBar: AppBar(title: const Text('Ciclo de Vida Flutter')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: addItem,
            child: const Text('Agregar elemento'),
          ),

          /// Lista mostrada usando StatelessWidget
          Expanded(
            child: ItemsList(
              items: items,
              onDelete: removeItem,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsList extends StatelessWidget {
  final List<String> items;
  final Function(int) onDelete;

  const ItemsList({
    super.key,
    required this.items,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    print('ItemsList build(): Dibujando lista');

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => onDelete(index),
          ),
        );
      },
    );
  }
}
