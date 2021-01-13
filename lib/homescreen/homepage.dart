import 'package:flutter/material.dart';

import 'firstpage.dart';
import 'secondpage.dart';
import 'thirdpage.dart';
import 'fourthpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller =TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Color(0xffd81b60),
          indicatorWeight: 10.0,
          indicatorPadding: EdgeInsets.zero,
          tabs: [
            Tab(icon: Icon(Icons.home, color:Color(0xfff06292))),
            Tab(icon: Icon(Icons.favorite, color:Color(0xfff06292))),
            Tab(icon: Icon(Icons.account_circle, color:Color(0xfff06292))),
            Tab(icon: Icon(Icons.shopping_basket, color:Color(0xfff06292))),
          ],
        ),
      ),

      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
          FourthPage()
        ],
        ),
    );
  }
}