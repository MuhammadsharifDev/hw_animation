


import 'package:animation_slivergrid/animation_page/animation_align.dart';
import 'package:animation_slivergrid/animation_page/examle_one.dart';
import 'package:flutter/material.dart';

import 'HomeWork_page/bottomnavbar/bottomnavigation_page.dart';
import 'animation_page/animate_opasity.dart';
import 'animation_page/animate_size.dart';
import 'animation_page/animated_textstyle.dart';
import 'animation_page/animation_builder.dart';
import 'animation_page/animation_controller.dart';
import 'animation_page/animation_page.dart';
import 'animation_page/tween_animation.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:ButtomNagPage(),
    );
  }
}

