import 'package:flutter/material.dart';

class Paymentunsuccessfull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              padding: EdgeInsets.all(50),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Image.asset("assets/paymentunsuccesful.png"),
                      height: 400,
                      width: 400,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Payment is Declayered!",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Check your Account balance or check your entries are correct",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: FlatButton(
                        onPressed: () => Navigator.pop(context),
                        height: 20,
                        minWidth: MediaQuery.of(context).size.width * .25,
                        child: Text(
                          "OK",
                          style: TextStyle(
                            fontFamily: "Times New Roman",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
