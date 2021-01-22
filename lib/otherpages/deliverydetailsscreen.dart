import 'package:flutter/material.dart';
import 'package:flutter_application_2/cart/cartpage.dart';
import 'package:flutter_application_2/otherpages/customtf.dart';
import 'package:flutter_application_2/otherpages/payment_details_page.dart';

class Deliveryscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
          padding: EdgeInsets.only(
            top: 15,
            left: 25,
            right: 25,
          ),
          children: [
            Text(
              "Delivery Details",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 35),
            Container(
              child: Column(
                children: [
                  CustumTextFieldOthers(
                    hintText: 'Name',
                    isObsecure: false,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 20),
                  CustumTextFieldOthers(
                    hintText: 'Delivery Date',
                    isObsecure: false,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 20),
                  CustumTextFieldOthers(
                    hintText: 'Delivery Time',
                    isObsecure: false,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 20),
                  CustumTextFieldOthers(
                    hintText: 'Delivery Address',
                    isObsecure: false,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 20),
                  CustumTextFieldOthers(
                    hintText: 'Description',
                    isObsecure: false,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 2),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.pinkAccent)),
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutPage()));
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.pinkAccent)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Paymentdetailspage()));
                  },
                  color: Colors.pinkAccent,
                  padding: EdgeInsets.all(8),
                  textColor: Colors.white,
                  child: Text("Submit", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ]),
    );
  }
}
