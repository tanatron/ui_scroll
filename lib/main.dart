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
    final List<String> items = List<String>.generate(50,(i) => 'Item ${i + 1}',
    );
    return Scaffold(
      appBar: AppBar(title: Text('Chapter 6'), backgroundColor: Colors.red),
      body: ListView.builder(
        itemCount: items.length, // ใช้ความยาวของลิสต์ข้อมูลของเรา
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading:Icon(Icons.list),
            title: Text(items[index]), // แสดงข้อมูลจากลิสต์
            subtitle: Text(items[index]), // แสดงหมายเลขรายการ
            // ไอคอนท้าย (ทางเลือก)
            onTap: () {
              print(items[index]);
            },
          );
        },
      ),
    );
  }
}