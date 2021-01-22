import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/Category/annivesary/newanniveryhome.dart';

class NewAnniversary extends StatefulWidget {
  @override
  _NewAnniversaryState createState() => _NewAnniversaryState();
}

class _NewAnniversaryState extends State<NewAnniversary> {
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
            'Anniversary Cakes',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.grey[700],
        ),
        body: ListView(children: [
          Container(
            height: 135,
            child: Image.asset(
              "assets/cakecategories/anniversaryCakes/anniversarySpecial.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: NewAnnivesaryHome(),
          ),
        ]));
  }
}
