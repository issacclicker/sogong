import 'package:flutter/material.dart';

class TemplateSelectPage extends StatefulWidget {
  const TemplateSelectPage({super.key});

  @override
  State<TemplateSelectPage> createState() => _TemplateSelectPageState();
}

class _TemplateSelectPageState extends State<TemplateSelectPage> {
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
