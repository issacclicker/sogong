import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: AppBar(
              backgroundColor: Color(0xff4693d7),
              leading:Icon(Icons.abc),
            )
        ),
        body: Center(
                child:
                Container(
                  child: Text("Second"),
                )
            ),
        bottomNavigationBar: BottomAppBar(
            child:Container()
        ),
      );
  }
}
