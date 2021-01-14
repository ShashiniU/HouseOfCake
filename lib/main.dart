import 'package:flutter/material.dart';
import 'package:flutter_cakecategory/anniversary.dart';


// import 'package:flutter_cakecategory/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:AnniversaryPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

