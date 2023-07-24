import 'package:flutter/material.dart';

class AnimateOpasityExample extends StatefulWidget {
  const AnimateOpasityExample({super.key});

  @override
  State<AnimateOpasityExample> createState() => _AnimateOpasityExampleState();
}

class _AnimateOpasityExampleState extends State<AnimateOpasityExample> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimateOPasity'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds:300),
          curve: Curves.bounceIn,
          child: Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),

      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          setState(() {
            _visible=!_visible;
          });
        },
        // tooltip: 'Togggle Opasity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
