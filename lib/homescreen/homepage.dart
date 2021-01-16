import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/cart/cartpage.dart';

import 'firstpage.dart';
import 'thirdpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = TabController(vsync: this, length: 4);
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
          labelColor: Color(0xffd81b60),
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.category_rounded), text: "Category"),
            Tab(icon: Icon(Icons.account_circle), text: "Profile"),
            Tab(icon: Icon(Icons.shopping_basket), text: "Cart"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [FirstPage(), CategoryPage(), ThirdPage(), CheckoutPage()],
      ),
    );
  }
}
