import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/Category/fruit/newfruithome.dart';

class FruitAppbar extends StatefulWidget {
  @override
  _FruitAppbarState createState() => _FruitAppbarState();
}

class _FruitAppbarState extends State<FruitAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 90,
          elevation: 1.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()));
            },
          ),
          centerTitle: true,
          title: Text(
            'Fruit Cakes',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.amber[900],
        ),
        body: ListView(children: [
          Container(
            height: 135,
            child: Image.asset(
              "assets/cakecategories/fruitCakes/cake7.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: NewFruitHome(),
          ),
        ]));
  }
}
