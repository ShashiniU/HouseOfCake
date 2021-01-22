import 'package:flutter/material.dart';
import 'package:flutter_application_2/cart/cartpage.dart';
import 'package:flutter_application_2/otherpages/deliverydetailsscreen.dart';

class OtherAppBar extends StatefulWidget {
  @override
  _OtherAppBarState createState() => _OtherAppBarState();
}

class _OtherAppBarState extends State<OtherAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          "Delivery Details",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 35,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutPage()));
              },
            );
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 50.0,
        width: double.infinity,
        child: Deliveryscreen(),
      ),
    );
  }
}
