import 'package:flutter/material.dart';
import 'package:sogong/auditSelectPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, child: Text('뒤로가기')),
        TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AuditSelectPage()));
        }, child: Text('로그인'))
      ],
    ) ;
      
      
  }
}
