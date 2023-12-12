import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_project/home_page/todo_page.dart';
import 'package:flutter_project/my/my.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  List<Widget> widgets = [
    HomePage(),
    MyPage()
  ];
  void _selectIndex(int index){
    setState(() {
  _currentIndex = index;


    });
  }
  List<String> titleList = [
    "待办",
    "我的"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titleList[_currentIndex],style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: widgets[_currentIndex],
      ),
      bottomNavigationBar:Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,

        ),
        child:    BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"待办" ),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "我的")
          ],
          currentIndex: _currentIndex,
          onTap: _selectIndex,

        ),
      )


    );
  }
}
