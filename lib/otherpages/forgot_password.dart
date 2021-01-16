import 'package:flutter/material.dart';
import 'package:flutter_application_2/otherpages/verification_page.dart';

class Forgotpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 90, left: 50, right: 50, bottom: 50),
        child: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              child: Image.asset("assets/shothimages/forgotpassword.png"),
              height: 200,
              width: 400,
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontFamily: "Times New Roman",
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
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
              height: 40,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Try another way",
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Verificationpage()));
                      },
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
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ]),
          ],
        )),
      ),
    );
  }
}
