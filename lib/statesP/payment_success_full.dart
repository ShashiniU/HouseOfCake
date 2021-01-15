import 'package:flutter/material.dart';

class Paymentsuccessfull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              padding: EdgeInsets.only(top: 5, right: 5, left: 5, bottom: 5),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Image.asset("assets/paymentsuccessful.jpg"),
                      height: 500,
                      width: 200,
                    ),
                    Text(
                      "Your Payment Successful!",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Text(
                          "Order Details",
                          style: TextStyle(
                              fontFamily: "Times New Roman", fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Text("Reference Number")),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.120,
                            child: Text("-")),
                        Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: Text("Ab1234")),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Text("Name")),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.110,
                            child: Text("-")),
                        Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: Text("Name")),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Text("Delivery Address")),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.120,
                            child: Text("-")),
                        Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: Text("Address")),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Text("Delivery Date")),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.100,
                            child: Text("-")),
                        Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: Text("Date")),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Text("Delivery Time")),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.100,
                            child: Text("-")),
                        Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: Text("Time")),
                      ],
                    ),
                    SizedBox(
                      height: 85,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        height: 50,
                        minWidth: MediaQuery.of(context).size.width * .25,
                        child: Text(
                          "OK",
                          style: TextStyle(
                            fontFamily: "Times New Roman",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
