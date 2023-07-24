
import 'package:flutter/material.dart';
import 'dart:math';
class AnimationBuilderExample extends StatefulWidget {
  const AnimationBuilderExample({super.key});

  @override
  State<AnimationBuilderExample> createState() => _AnimationBuilderExampleState();
}

class _AnimationBuilderExampleState extends State<AnimationBuilderExample> with TickerProviderStateMixin{
  late final AnimationController _controller=AnimationController(
      duration: Duration(seconds: 2),
      vsync: this)..repeat();
  void dispose(){
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(

        animation: _controller,
        child: Container(

          height: 120,
          width: 120,
          color: Colors.green,
        ),
        builder: (BuildContext context, Widget? child){
          return Transform.rotate(

              angle: _controller.value*2.0*pi,
                  child: child,
          );
        }
    );
  }
}
