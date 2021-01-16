import 'package:flutter/material.dart';
import 'package:flutter_application_2/admin/adminlogin.dart';
import 'package:flutter_application_2/homescreen/homepage.dart';

import 'package:flutter_application_2/screens/loginscreen.dart';
import 'package:flutter_application_2/screens/registerscreen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white, Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),

              //image begin
              Image.asset(
                'assets/images/logoIcon.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),

              //image end

              //house of cake start
              Text(
                'HOUSE OF CAKE',
                style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //house of cake end

              SizedBox(
                height: 30,
              ),

              //Welcome to HOUSE OF CAKE start

              Text(
                'Welcome to HOUSE OF CAKE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                //Welcome to HOUSE OF CAKE end
              ),
              SizedBox(
                height: 20,
              ),

              //The Easiest Way to Send Cakes and Gifts for Your Loves Ones! start

              Text(
                'The Easiest Way to Send Cakes and Gifts for Your Loves Ones!',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),

              //The Easiest Way to Send Cakes and Gifts for Your Loves Ones! start

              SizedBox(
                height: 35,
              ),

              //login
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //signup
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      'SignUp',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              //skip
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //admin login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminLoginScreen())),
                    child: Text(
                      'ADMIN LOGIN',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
