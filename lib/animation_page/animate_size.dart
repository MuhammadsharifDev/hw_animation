import 'package:flutter/material.dart';

class AnimatedSizedExample extends StatefulWidget {
  const AnimatedSizedExample({super.key});

  @override
  State<AnimatedSizedExample> createState() => _AnimatedSizedExampleState();
}

class _AnimatedSizedExampleState extends State<AnimatedSizedExample>{
  double  _size=50.0;
  bool _large=false;

  void _updateSize(){
     setState(() {
       _size=_large?300.0:50;
       _large=!_large;
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSize'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            _updateSize();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: _large?BorderRadius.circular(100):BorderRadius.circular(150),
              color: Colors.amber,
            ),

            child: AnimatedSize(
              duration: Duration(seconds: 1),
              curve: Curves.easeIn,
            child:FlutterLogo(size: _size,)
            ),
          ),
        ),
      ),
    );
  }
}
