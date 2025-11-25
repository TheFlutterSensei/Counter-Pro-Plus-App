import 'package:flutter/material.dart';

void main() {
  runApp(const CounterProPlus());
}

class CounterProPlus extends StatelessWidget {
  const CounterProPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Pro Plus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple),
      home: const CounterHomeScreen(),
    );
  }
}

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});

  @override
  State<CounterHomeScreen> createState() => _CounterState();
}

class _CounterState extends State<CounterHomeScreen> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Pro+'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Your counter:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '$_count',
              style: TextStyle(
                fontSize: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _decrement,
                  label: Text('Decrement'),
                  icon: Icon(Icons.remove),
                ),
                SizedBox(width: 5),
                ElevatedButton.icon(
                  onPressed: _reset,
                  label: Text('Reset'),
                  icon: Icon(Icons.refresh),
                ),
                SizedBox(width: 5),
                ElevatedButton.icon(
                  onPressed: _increment,
                  label: Text('Increment'),
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
