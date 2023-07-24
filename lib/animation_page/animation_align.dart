import 'package:flutter/material.dart';

class AnimationAlignExample extends StatefulWidget {
  const AnimationAlignExample({super.key});

  @override
  State<AnimationAlignExample> createState() => _AnimationAlignExampleState();
}

class _AnimationAlignExampleState extends State<AnimationAlignExample> {
  bool selected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: (){
          setState(() {
            selected=!selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: AnimatedAlign(
              alignment: selected?Alignment.topRight:Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 100,),
            ),
          ),
        ),
      ),
    );
  }
}
