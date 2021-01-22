import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/Category/birthday/newbirthdayhome.dart';

class BirthdayAppbar extends StatefulWidget {
  @override
  _BirthdayAppbarState createState() => _BirthdayAppbarState();
}

class _BirthdayAppbarState extends State<BirthdayAppbar> {
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
            'Birthday Cakes',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Color(0xffec407a),
        ),
        body: ListView(children: [
          Container(
            height: 135,
            child: Image.asset(
              "assets/cakecategories/birthdaycakes/hbdcupcake.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: NewBirthdayHome(),
          ),
        ]));
  }
}
