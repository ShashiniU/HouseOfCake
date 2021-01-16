import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen/homepage.dart';
import 'package:flutter_application_2/otherpages/delivery_details_page.dart';

final paymentController = TextEditingController();
final nameController = TextEditingController();
final numberController = TextEditingController();
final monthController = TextEditingController();
final yearController = TextEditingController();
final cvcController = TextEditingController();

class Paymentdetailspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            title: Text(
              "Payment Details",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Deliverydetailspage()));
                  },
                );
              },
            ),
          ),
          body: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
                    child:
                        Image.asset("assets/shothimages/visa-mastercard.png"),
                    height: 100,
                    width: 400,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 30),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Payment Amount",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Times New Roman",
                          ),
                        ),
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
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Name On The Card",
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
                            "Card Number",
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
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Card Expire Date",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Times New Roman",
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  padding: EdgeInsets.only(bottom: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Month",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Times New Roman",
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: TextField(
                                    controller: monthController,
                                    cursorColor: Colors.black,
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.5, color: Colors.pink),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.20),
                            Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  padding: EdgeInsets.only(bottom: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Year",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Times New Roman",
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: TextField(
                                    controller: yearController,
                                    cursorColor: Colors.black,
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.5, color: Colors.pink),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "CVC",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Times New Roman",
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: TextField(
                              controller: cvcController,
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
                              border:
                                  Border.all(width: 1.5, color: Colors.pink),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                      padding: const EdgeInsets.only(left: 75, right: 75),
                      child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width,
                        height: 40,
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomePage()));
                            },
                            color: Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Text('Pay',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ))),
                      )),
                ],
              )),
        ));
  }
}
