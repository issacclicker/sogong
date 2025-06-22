import 'package:flutter/material.dart';

class CategorySelectPage extends StatefulWidget {
  const CategorySelectPage({super.key});

  @override
  State<CategorySelectPage> createState() => _CategorySelectPageState();
}

class _CategorySelectPageState extends State<CategorySelectPage> {
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
