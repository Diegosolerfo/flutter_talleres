import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatePracticePage(),
    );
  }
}

class StatePracticePage extends StatefulWidget {
  const StatePracticePage({Key? key}) : super(key: key);

  @override
  State<StatePracticePage> createState() => _StatePracticePageState();
}

class _StatePracticePageState extends State<StatePracticePage> {

  bool showBalance = false; 
  bool acceptTerms = false; 
  Color backgroundColor = Colors.white; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, 
      appBar: AppBar(
        title: const Text('State Management Practice'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            const Text(
              'Bank Balance',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              showBalance ? '\$ 2,500.00' : '******',
              style: const TextStyle(fontSize: 26),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showBalance = !showBalance;
                });
              },
              child: Text(showBalance ? 'Hide balance' : 'Show balance'),
            ),

            const Divider(height: 40),

            const Text(
              'Checklist',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            CheckboxListTile(
              title: const Text('Accept terms and conditions'),
              value: acceptTerms,
              onChanged: (value) {
                setState(() {
                  acceptTerms = value!;
                });
              },
            ),

            Text(
              acceptTerms ? 'Terms accepted' : 'You must accept the terms',
              style: TextStyle(
                color: acceptTerms ? Colors.green : Colors.red,
              ),
            ),

            const Divider(height: 40),

            const Text(
              'Select page color',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            DropdownButton<Color>(
              value: backgroundColor,
              items: const [
                DropdownMenuItem(
                  value: Colors.white,
                  child: Text('White'),
                ),
                DropdownMenuItem(
                  value: Colors.blue,
                  child: Text('Blue'),
                ),
                DropdownMenuItem(
                  value: Colors.green,
                  child: Text('Green'),
                ),
                DropdownMenuItem(
                  value: Colors.black,
                  child: Text('Black'),
                ),
              ],
              onChanged: (color) {
                setState(() {
                  backgroundColor = color!;
                });
              },
            ),

            const SizedBox(height: 20),

            Text(
              'Current state:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('showBalance: $showBalance'),
            Text('acceptTerms: $acceptTerms'),
            Text('backgroundColor: $backgroundColor'),
          ],
        ),
      ),
    );
  }
}
