import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen/homepage.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        centerTitle: true,
        title: Text(
          'Category',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      backgroundColor: Colors.pink[100],
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
                  'Custom Design',
                  'assets/imghome/birthday5.jpg',
                ),
                _cakeCard('BirthDay cakes', 'assets/imghome/birthday1.jpg'),
                _cakeCard('Fruit Cakes', 'assets/imghome/fruit1.jpg'),
                _cakeCard('Theme Cakes', 'assets/imghome/cake5.jpg'),
                _cakeCard(
                    'Anniversary Cakes', 'assets/imghome/anniversary.jpg'),
                _cakeCard('Wedding Cakes', 'assets/imghome/cake1.jpg'),
              ],
            ),
          ),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _cakeCard(String name, String imgPath) {
    return Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 1.0, left: 2.0, right: 2.0),
      child: InkWell(
        onTap: () {},
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
              SizedBox(height: 20.0),
              Text(name,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  style: TextStyle(
                      color: Color(0xffd81b60),
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
