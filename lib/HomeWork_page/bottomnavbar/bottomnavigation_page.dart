import 'package:flutter/material.dart';

import '../page_1/hw_1.dart';
import '../page_2/hw_2.dart';
import '../page_3/hw_3.dart';

class ButtomNagPage extends StatefulWidget {
  const ButtomNagPage({super.key});

  @override
  State<ButtomNagPage> createState() => _ButtomNagPageState();
}

class _ButtomNagPageState extends State<ButtomNagPage> {
 ButtomMenu _buttomMenun=ButtomMenu.hw_1;
 void _selectedTab(ButtomMenu tab){
   setState(() {
     _buttomMenun=tab;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _buttomMenun.index,
        children: [
          Homework_1(),
          Homework_2(),
          Homework_3(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _buttomMenun.index,
        onTap: (index){
          _selectedTab(ButtomMenu.values[index]);
        },
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.one_x_mobiledata_outlined),label: 'hw_1'),
          BottomNavigationBarItem(icon: Icon(Icons.two_k),label: 'hw_2'),
          BottomNavigationBarItem(icon: Icon(Icons.three_g_mobiledata),label: 'hw_3'),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple,
      ),
    );
  }
}

enum ButtomMenu{
  hw_1,
  hw_2,
  hw_3,
}
