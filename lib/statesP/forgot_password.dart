import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
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
                    child: Image.asset("assets/forgotpassword.png"),
                    height: 300,
                    width: 600,
                  ),
                  SizedBox(
                    height: 81,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "We will send you a text message of a verification code to your registered phone number",
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Try another way",
                          style: TextStyle(
                            fontFamily: "Times New Roman",
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 160,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: FlatButton(
                            onPressed: () => Navigator.pop(context),
                            height: 10,
                            minWidth: MediaQuery.of(context).size.width * .10,
                            child: Text(
                              "Next",
                              style: TextStyle(
                                fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ]),
                ],
              ))),
        ));
  }
}
