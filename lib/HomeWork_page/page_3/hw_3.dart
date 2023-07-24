import 'package:flutter/material.dart';

class Homework_3 extends StatefulWidget{
  const Homework_3({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Homework_3();
  }
}

class _Homework_3 extends State<Homework_3>with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationcontroller;

  @override
  void initState() {
    animationcontroller = AnimationController(vsync: this, duration: Duration(seconds: 2));

    animationcontroller.repeat();

    animation = Tween<double>(begin: 0, end:350).animate(animationcontroller);

    animation.addListener(() {
      setState(() { });
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Circle Animation"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              shape:BoxShape.circle,
              color:Colors.deepOrangeAccent
          ),
          height:animation.value, //value from animation controller
          width: animation.value, //value from animation controller
        ),
      ),
    );
  }
}