import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/checkingpage.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      )),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 7),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoadinPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/bg.png'),
            // Opacity(
            //   opacity: 0.5,
            //   child: Image.asset('assets/bg.png'),
            // ),

            Shimmer.fromColors(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'House of Cake',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'Pacifico',
                        shadows: [
                          Shadow(
                              blurRadius: 18.0,
                              color: Colors.black87,
                              offset: Offset.fromDirection(120, 12)),
                        ]),
                  ),
                ),
                baseColor: Color(0xff7f00ff),
                highlightColor: Color(0xffe100ff)),
          ],
        ),
      ),
    );
  }
}
