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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Color(0xff4693d7),
            leading:Icon(Icons.abc), 
          )
        ),
        body: Text('아아'),
        bottomNavigationBar: BottomAppBar(
          child:Container()
        ),
      ),
    );
  }
}
