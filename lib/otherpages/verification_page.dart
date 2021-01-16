import 'package:flutter/material.dart';
import 'package:flutter_application_2/otherpages/forgot_password.dart';
import 'package:flutter_application_2/screens/loginscreen.dart';

final emailController = TextEditingController();

class Verificationpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            padding: EdgeInsets.all(50),
            child: Center(
                child: Column(
              children: <Widget>[
                SizedBox(
                  child: Image.asset("assets/shothimages/password22.png"),
                  height: 250,
                  width: 500,
                ),
                SizedBox(
                  height: 22,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Get a verification code",
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We need sometime to review your request",
                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter an email address where we can contact you later",
                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width * .99,
                          height: MediaQuery.of(context).size.height * .055,
                          child: TextField(
                            controller: emailController,
                            cursorColor: Colors.black,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter the email',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.pink),
                            borderRadius: BorderRadius.circular(100),
                          )),
                      SizedBox(height: 70),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(.0),
                                side: BorderSide(color: Colors.blueAccent)),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forgotpassword()));
                            },
                            child: Text(
                              "Cancel".toLowerCase(),
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(width: 30),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                                side: BorderSide(color: Colors.blueAccent)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            child: Text("Send".toLowerCase(),
                                style: TextStyle(fontSize: 17)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      ),
                    ]))
              ],
            ))));
  }
}
