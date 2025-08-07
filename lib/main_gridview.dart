import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(
      100,
      (i) => 'Item ${i + 1}',
    );
    return Scaffold(
      appBar: AppBar(title: Text('Chapter 6'), backgroundColor: Colors.red),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          crossAxisCount: 4,
          childAspectRatio: 1.6,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.orange[100 + (index % 8) * 100],
            child: Center(child: Text(items[index])),
          );
        },
      ),
    );
  }
}