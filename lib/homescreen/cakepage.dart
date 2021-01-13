import 'package:flutter/material.dart';

import 'cake_detailspage.dart';

class CakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFCFAF8),
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
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 20.0,
              childAspectRatio: 0.8,
              children: [
                //six cake cards
                _cakeCard(
                    'Red and white rounded\n    anniversary cake',
                    'Rs.3500/=',
                    'assets/imghome/anniversary.jpg',
                    false,
                    false,
                    context),
                _cakeCard(
                    '  Structuredwith rose\n  flowers ribbon cake',
                    'Rs.4000/=',
                    'assets/imghome/birthday5.jpg',
                    false,
                    false,
                    context),
                _cakeCard('Structured birthday cake\n', 'Rs.3000/=',
                    'assets/imghome/birthday1.jpg', false, false, context),
                _cakeCard('  Mixed food\ntheme cake', 'Rs.3800',
                    'assets/imghome/fav2.jpg', false, false, context),
                _cakeCard('Fruit cake with nut\n', 'Rs.2800',
                    'assets/imghome/fruit1.jpg', false, false, context),
                _cakeCard('Ribbon Birthday Cake\n', 'Rs.2500',
                    'assets/imghome/birthday.jpg', false, false, context),
              ],
            ),
          ),
          SizedBox(height: 250.0)
        ],
      ),
    );
  }

  Widget _cakeCard(String name, String price, String imgPath, bool isAdded,
      bool isFavorite, context) {
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
              Padding(
                  padding: EdgeInsets.all(1.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    isFavorite
                        ? Icon(Icons.favorite, color: Color(0xffd81b60))
                        : Icon(Icons.favorite_border, color: Color(0xffd81b60))
                  ])),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 45.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.contain)),
                ),
              ),
              SizedBox(height: 7.0),
              Text(price,
                  style: TextStyle(
                      color: Color(0xffd81b60),

                      //fontFamily: 'Varela',
                      fontSize: 12.0)),
              Text(name,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  style: TextStyle(
                      color: Color(0xffd81b60),
                      //fontFamily: 'Varela',
                      fontSize: 15.0)),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!isAdded) ...[
                      Icon(Icons.shopping_basket,
                          color: Color(0xffd81b60), size: 14.0),
                      Text('Add to cart',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Color(0xffd81b60),
                              fontSize: 14.0)),
                    ],
                    // if (isAdded) ...[
                    //   Icon(Icons.remove_circle_outline,
                    //       color: Color(0xFFD17E50), size: 12.0),
                    //   Text('3',
                    //       style: TextStyle(
                    //           fontFamily: 'Varela',
                    //           color: Color(0xFFD17E50),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 12.0)),
                    //   Icon(Icons.add_circle_outline,
                    //       color: Color(0xFFD17E50), size: 12.0),
                    // ]
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
