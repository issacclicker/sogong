import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'registerPage.dart';
import 'package:serious_python/serious_python.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginSelectPage()
    );
  }
}

class LoginSelectPage extends StatelessWidget {


  const LoginSelectPage({super.key});


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          final maxWidth = constraints.maxWidth;
          final maxHeight = constraints.maxHeight;
          return FractionallySizedBox(
                heightFactor: 0.4,  // 원래 0.1
                widthFactor: 0.4,   // 원래 0.4
                child: Container(
                  color: Color(0xffbbbbbb),
                  child: LoginButtons()
                )
          );
        },
    );
  }
}

class LoginButtons extends StatelessWidget {

  final String _pyFile = "app/test.py";
  Future<void> runPython() async {
    // Python 파일 실행
    await SeriousPython.run(_pyFile, sync: false);
  }

  const LoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(child: Text('로그인', style: TextStyle(fontSize: 20)),
          onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()),
          );
          },),
        SizedBox(height: 4,),
        TextButton(child: Text('회원가입', style: TextStyle(fontSize: 20)),
          onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage()),
          );
          },),
        TextButton(onPressed: (){runPython();}, child: Text('파이썬')),
      ],
    );
  }
}

