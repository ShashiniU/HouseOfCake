import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_application_2/constant.dart';
import 'package:flutter_application_2/homescreen/homepage.dart';

import 'package:flutter_application_2/screens/welcomescreen.dart';

class LoadinPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("Error : ${snapshot.error}"),
              ),
            );
          }

          //connecting to initialization
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, streamSnapshot) {
                  if (snapshot.hasError) {
                    return Scaffold(
                      body: Center(
                        child: Text("Error : ${streamSnapshot.error}"),
                      ),
                    );
                  }
                  //login checking
                  if (streamSnapshot.connectionState ==
                      ConnectionState.active) {
                    User _user = streamSnapshot.data;
                    if (_user == null) {
                      //user not logged in
                      return WelcomeScreen();
                    } else {
                      //user logged in
                      return HomePage();
                    }
                  }
                  return Scaffold(
                    body: Center(
                      child: Text(
                        "checking auth..",
                        style: Constants.regularHeading,
                      ),
                    ),
                  );
                });
          }

          //connecting to firebase loaing
          return Scaffold(
            body: Center(
              child: Text(
                "Initialization App..",
                style: Constants.regularHeading,
              ),
            ),
          );
        });
  }
}
