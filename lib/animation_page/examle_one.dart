import 'package:flutter/material.dart';
import 'dart:math';
class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> with TickerProviderStateMixin{
     late AnimationController animationController;
     late Animation<double> animation;
     late Color iconColor=Colors.blueGrey;

     @override
     void initState(){
       super.initState();
       animationController=AnimationController(vsync:this,duration: const Duration(seconds: 2), );
       animation=Tween<double>(begin: 0,end: 4*pi).animate(
           CurvedAnimation(
               parent: animationController,
               curve: Curves.bounceIn,
           reverseCurve: Curves.fastOutSlowIn),)
       ..addListener(() {
         setState(() {

           Future.delayed(const Duration(seconds: 3)).then((value) => iconColor=Colors.tealAccent);
           iconColor=Colors.amber;
         });
       });
 animationController.repeat();
     }
     @override
     void dispose(){
       super.dispose();
       animationController.dispose();
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.shopping_basket,size: 40,)),
        ],
      ),
      body:Center(
        child: Transform.rotate(
            angle: animation.value,
          child: Icon(Icons.file_download,size: 50,),
        ),
      ) ,
    );
  }
}
