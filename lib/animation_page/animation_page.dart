import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimTionPaddingExample extends StatefulWidget {
  const AnimTionPaddingExample({super.key});

  @override
  State<AnimTionPaddingExample> createState() => _AnimTionPaddingExampleState();
}

class _AnimTionPaddingExampleState extends State<AnimTionPaddingExample>{
  double paddingValue=0.0;


   void _animatePadding(double value){
     setState(() {
       paddingValue=value;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatePadding '),
      ),
      body: Center(
        child: AnimatedPadding(
          padding:EdgeInsets.all(paddingValue),
          duration: Duration(seconds: 3),
          curve: Curves.bounceIn,
          child: ClipRect(
            child: Image.asset('assets/images/car.jpg'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _animatePadding(paddingValue==0.0?100.0:0.0);
        },
        child: const Text('Car'),
      ),
    );
  }
}
