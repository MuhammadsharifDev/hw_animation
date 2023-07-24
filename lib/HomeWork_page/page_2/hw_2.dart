import 'package:flutter/material.dart';

class Homework_2 extends StatefulWidget {
  const Homework_2({Key? key}) : super(key: key);

  @override
  State<Homework_2> createState() => _Homework_2State();
}

class _Homework_2State extends State<Homework_2> with TickerProviderStateMixin{
  bool isBigger = false;
  late AnimationController _animationController;
  late Animation colorTween;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    colorTween = ColorTween(begin: Colors.red, end: Colors.green)
        .animate(_animationController);

    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("AnimatedContainer"),
        ),
        body: Container(
          child: Center(
            child: AnimatedContainer(
               color: isBigger?Colors.green:Colors.blue,
              height: isBigger ? 800 : 100,
              width: isBigger ? 500 : 100,
              duration: const Duration(seconds: 2),
              curve: Curves.easeOut,

              child: ClipRRect(

                child: Container(
                  decoration:const BoxDecoration(

                  ),
                  child:  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        isBigger = !isBigger;
                        setState(() {});
                      },
                      child:
                       const Text("Animated"),
                    ),
                  ),
                )
              ),
            ),
          ),
        ),
    );
  }
}