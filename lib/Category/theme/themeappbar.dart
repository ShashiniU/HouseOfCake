import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/Category/theme/newthemehome.dart';

class ThemeAppbar extends StatefulWidget {
  @override
  _ThemeAppbarState createState() => _ThemeAppbarState();
}

class _ThemeAppbarState extends State<ThemeAppbar> {
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
            'Theme Cakes',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: ListView(children: [
          Container(
            height: 135,
            child: Image.asset(
              "assets/cakecategories/themeCakes/cake2.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: NewThemeHome(),
          ),
        ]));
  }
}
