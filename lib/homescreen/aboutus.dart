import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen/homepage.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 15,
          left: 25,
          right: 25,
        ),
        children: [
          Text(
            "About Us",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 10),
          Text(
            "       House Of Cake is give you best and quality products since 1997. More than  100 costomers visit our shop and placed orders per day. We have number of cake design and we design a cake as customer requirement. Acccording to current situation we hope to introduce you a mobile application. we hope this mobile application make easy your day to day live. \n         You can visit our shop through this application.you can shop through this application order your favorite cake, you can upload your favorite design, you can do your payment through this mobile application and we 100% garantee about fast delivery, give best and quality product according to your requirement.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
