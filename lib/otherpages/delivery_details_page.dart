import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/cart/cartpage.dart';
import 'package:flutter_application_2/otherpages/payment_details_page.dart';

final paymentController = TextEditingController();
final nameController = TextEditingController();
final numberController = TextEditingController();

class Deliverydetailspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(
          "Delivery Details",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
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
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: TextFormField(
                      controller: paymentController,
                      enabled: false,
                      cursorColor: Colors.black,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman",
                      ),
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman",
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      controller: nameController,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.pink),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Delivery date",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman",
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      controller: numberController,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.pink),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Delivery Time",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman",
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      controller: numberController,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.pink),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Delivery Address",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman",
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      controller: numberController,
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.pink),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),
            Container(
              width: MediaQuery.of(context).size.width * .88,
              padding: EdgeInsets.only(bottom: 5),
              alignment: Alignment.centerLeft,
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Times New Roman",
                ),
              ),
            ),
            SizedBox(height: 14),
            Container(
              width: MediaQuery.of(context).size.width * .88,
              height: MediaQuery.of(context).size.height * .100,
              child: TextField(
                controller: numberController,
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                  hintText: 'Type cake details here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: Colors.pink),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(height: 35),
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
          ],
        ),
      ),
    );
  }
}
