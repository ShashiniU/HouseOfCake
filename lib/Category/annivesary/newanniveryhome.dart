import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen/cake_detailspage.dart';

class NewAnnivesaryHome extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
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
                    'assets/cakecategories/anniversaryCakes/anniversarycake1.jpg',
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Structured princess cake',
                    'assets/cakecategories/anniversaryCakes/anniversarycake2.jpg',
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Chocolate Cake birthd',
                    'assets/cakecategories/anniversaryCakes/anniversarycake3.jpg',
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Simple rounded birthday cake',
                    'assets/cakecategories/anniversaryCakes/anniversarycake4.jpg',
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Pincess birthday',
                    'assets/cakecategories/anniversaryCakes/anniversarycake5.jpg',
                    'Rs.2500',
                    context),
                _cakeCard(
                    'Pink mashmelos structured cake',
                    'assets/cakecategories/anniversaryCakes/anniversarycake6.jpg',
                    'Rs.2500',
                    context),
              ],
            ),
          ),
          SizedBox(height: 180.0)
        ],
      ),
    );
  }

  Widget _cakeCard(String name, String imgPath, String price, context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 1.0, left: 2.0, right: 2.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 800),
                  pageBuilder: (_, __, ___) => CakeDetailsPage(
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
