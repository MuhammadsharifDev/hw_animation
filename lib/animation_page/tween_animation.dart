import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  Color targetValue = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TweenAnimationBuilder"),
      ),
      body: Center(
        child: TweenAnimationBuilder<Color?>(
          tween: ColorTween(begin: Colors.blue, end: targetValue),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, Color? color, Widget? child) {
            return IconButton(
              iconSize: 120,
              color: color,
              icon: child!,
              onPressed: () {
                setState(
                      () {
                    targetValue =
                    targetValue == Colors.red ? Colors.yellow : Colors.red;
                  },
                );
              },
            );
          },
          child: const Icon(Icons.account_balance_wallet_outlined),
        ),
      ),
    );
  }
}