import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Category/annivesary/newanniveryhome.dart';
import 'package:flutter_application_2/Category/birthday/newbirthdayhome.dart';
import 'package:flutter_application_2/Category/fruit/newfruithome.dart';
import 'package:flutter_application_2/Category/wedding/newweddinhome.dart';
import 'package:flutter_application_2/homescreen/custumdesignPage.dart';
import 'package:flutter_application_2/screens/welcomescreen.dart';
import 'package:wave_drawer/wave_drawer.dart';

import 'profilepage.dart';
import 'cakepage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _foled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cake Shop',
          style: TextStyle(fontSize: 25.0),
        ),
        backgroundColor: Color(0xffec407a),
        actions: [
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            width: _foled ? 56 : 250,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
              boxShadow: kElevationToShadow[6],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: !_foled
                        ? TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.w900),
                              border: InputBorder.none,
                            ),
                          )
                        : null,
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(_foled ? 32 : 0),
                        topRight: Radius.circular(
                          32,
                        ),
                        bottomLeft: Radius.circular(_foled ? 32 : 0),
                        bottomRight: Radius.circular(
                          32,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          _foled ? Icons.search : Icons.close,
                          color: Colors.pink[700],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _foled = !_foled;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: WaveDrawer(
        backgroundColor: Colors.pink[900],
        boundaryColor: Colors.pink[50],
        boundaryWidth: 5.8,
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text(
                'Hi, ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 22),
              ),
              accountEmail: Text(
                'Welcome to House Of Cake',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              decoration: BoxDecoration(color: Color(0xffd81b60)),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text('My Account',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfilePage()));
              },
            ),
            Divider(
              color: Colors.pink[50],
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              title: Text('My Order',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfilePage()));
              },
            ),
            Divider(
              color: Colors.pink[50],
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.rate_review,
                color: Colors.white,
              ),
              title: Text('Rate App',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfilePage()));
              },
            ),
            Divider(
              color: Colors.pink[50],
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.design_services,
                color: Colors.white,
              ),
              title: Text('Terms of Services',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfilePage()));
              },
            ),
            Divider(
              color: Colors.pink[50],
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.white,
              ),
              title: Text('About Us',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfilePage()));
              },
            ),
            Divider(
              color: Colors.pink[50],
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text('Logout',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900)),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => WelcomeScreen()));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            height: 75.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 70.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffba68c8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 80.0, minHeight: 1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Top",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustumDesignPAge()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xff4a148c)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 200.0, minHeight: 1.0),
                        alignment: Alignment.center,
                        child: Text(
                          " Add Your Custom Design",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NewBirthdayHome()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 100.0, minHeight: 1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Birthday Cakes",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NewAnnivesaryHome()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 110.0, minHeight: 1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Anniversary Cakes",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NewWeddingHome()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 100.0, minHeight: 1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Wedding Cakes",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NewFruitHome()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffce93d8), Color(0xffec407a)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 80.0, minHeight: 1.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Fruit Cakes",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: CakePage(),
          ),
        ],
      ),
    );
  }
}
