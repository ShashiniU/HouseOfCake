import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/CategoryPage.dart';
import 'package:flutter_application_2/homescreen/cake_detailspage.dart';

class NewFruitHome extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 100,
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
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.amber[900],
      ),
      backgroundColor: Colors.yellow[900],
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 9.0, left: 5.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.8,
              children: [
                //six cake cards
                _cakeCard(
                    'First year pincess birthday cake',
                    "assets/cakecategories/fruitCakes/cake1.jpg",
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Structured princess cake',
                    "assets/cakecategories/fruitCakes/cake2.jpg",
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Chocolate Cake birthd',
                    "assets/cakecategories/fruitCakes/cake3.jpeg",
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Simple rounded birthday cake',
                    "assets/cakecategories/fruitCakes/cake4.jpg",
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Pincess birthday',
                    "assets/cakecategories/fruitCakes/cake5.jpg",
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Pink mashmelos structured cake',
                    "assets/cakecategories/fruitCakes/cake6.jpg",
                    'Rs.2500',
                    context),
              ],
            ),
          ),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _cakeCard(String name, String imgPath, String price, context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 1.0, left: 2.0, right: 2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CakeDetailsPage(
                  assetPath: imgPath, cakeprice: price, cakename: name)));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 7.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 110.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.fitWidth,
                  )),
                ),
              ),
              SizedBox(height: 10.0),
              Text(name,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  style: TextStyle(
                      color: Color(0xffd81b60),
                      fontWeight: FontWeight.w900,
                      //fontFamily: 'Varela',
                      fontSize: 15.0)),
              SizedBox(height: 5.0),
              Text(price,
                  textAlign: TextAlign.left,
                  maxLines: 4,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      //fontFamily: 'Varela',
                      fontSize: 15.0)),
            ],
          ),
        ),
      ),
    );
  }
}
