import 'package:flutter/material.dart';
import 'package:sogong/makeNewAuditPage.dart';

class AuditSelectPage extends StatefulWidget {
  const AuditSelectPage({super.key});

  @override
  State<AuditSelectPage> createState() => _AuditSelectPageState();
}

class _AuditSelectPageState extends State<AuditSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ListView()),
          TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MakeNewAuditPage()));
                },child: Text("새 감사 생성"))],
      )
      ,bottomNavigationBar: Text("hi"),
    );

  }
}
