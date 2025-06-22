import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tests(),
    );
  }
}

class Tests extends StatelessWidget {
  const Tests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context,MaterialPageRoute(
              builder: (_) => SecondView(),
          ))
        )
      )
    );
  }
}
