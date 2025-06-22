import 'package:flutter/material.dart';
import 'package:sogong/categorySelectPage.dart';
import 'package:sogong/templateSelectPage.dart';

class MakeNewAuditPage extends StatefulWidget {
  const MakeNewAuditPage({super.key});

  @override
  State<MakeNewAuditPage> createState() => _MakeNewAuditPageState();
}

class _MakeNewAuditPageState extends State<MakeNewAuditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;
            final maxHeight = constraints.maxHeight;
            return FractionallySizedBox(
                heightFactor: 0.15,
                widthFactor: 0.4,
                child: Container(
                  color: Color(0xffbbbbbb),
                  child: Column(
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>CategorySelectPage()));
                      }, child: Text('카테고리 선택')),
                      TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>TemplateSelectPage()));
                      }, child: Text('템플릿 선택')),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('뒤로가기')),
                    ],
                  )
                )
            );
          },
        )
    );
  }
}
