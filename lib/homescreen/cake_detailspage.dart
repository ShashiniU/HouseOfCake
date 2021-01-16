import 'package:flutter/material.dart';
import 'package:flutter_application_2/cart/cartpage.dart';

class CakeDetailsPage extends StatelessWidget {
  final assetPath, cakeprice, cakename;

  CakeDetailsPage({this.assetPath, this.cakeprice, this.cakename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Pickup',
            style: TextStyle(
                // fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
                  height: 250.0, width: 150.0, fit: BoxFit.contain)),
          SizedBox(height: 20.0),
          Center(
            child: Text(cakeprice,
                style: TextStyle(
                    // fontFamily: 'Varela',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffd81b60))),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(cakename,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 24.0)),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                  'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.0),
            child: Container(
              color: Colors.white70,
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.star,
                    size: 20.0,
                    color: Colors.pinkAccent,
                  ),
                  Text(
                    'Type:with egg',
                    style: TextStyle(
                      color: Color(0xfff06292),
                    ),
                  ),
                  Icon(
                    Icons.star,
                    size: 20.0,
                    color: Colors.pinkAccent,
                  ),
                  Text(
                    'Weight: 1Kg',
                    style: TextStyle(
                      color: Color(0xfff06292),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 75,
              right: 75,
            ),
            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              height: 45,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckoutPage()));
                },
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
