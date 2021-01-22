import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';

import 'package:flutter_application_2/Category/wedding/newweddinhome.dart';

class WeddingAppbar extends StatefulWidget {
  @override
  _WeddingAppbarState createState() => _WeddingAppbarState();
}

class _WeddingAppbarState extends State<WeddingAppbar> {
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
            'Wedding Cakes',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.green[900],
        ),
        body: ListView(children: [
          Container(
            height: 135,
            child: Image.asset(
              "assets/cakecategories/weddingCakes/Special.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: NewWeddingHome(),
          ),
        ]));
  }
}
