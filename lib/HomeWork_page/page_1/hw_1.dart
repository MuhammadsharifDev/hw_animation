import 'package:flutter/material.dart';

class Homework_1 extends StatefulWidget{
  const Homework_1({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Homework_1();
  }
}

class _Homework_1 extends State<Homework_1>with TickerProviderStateMixin {
  bool isSwitch=false;
  late Animation<double> animation;
  late AnimationController animationcontroller;

  @override
  void initState() {
    animationcontroller = AnimationController(vsync: this, duration: Duration(seconds: 2));

    animationcontroller.repeat();

    animation = Tween<double>(begin: 50, end:350).animate(animationcontroller);

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
      body: Column(
        children: [
          Center(
            child:Container(
              child: Center(
                child: AnimatedContainer(

                  duration: const Duration(seconds: 2),
                  curve: Curves.easeOut,

                  child: ClipRRect(

                      child: Container(
                        decoration:const BoxDecoration(

                        ),

                      )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Switch(value: isSwitch,
              onChanged: (value){
            setState(() {
              isSwitch=value;
            });
              }
          ),
        ],
      ),
    );
  }
}