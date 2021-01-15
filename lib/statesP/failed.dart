import 'package:flutter/material.dart';

class Failed extends StatelessWidget {
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
                    Text(
                      "Failed",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      child: Image.asset("assets/failedpage.jpg"),
                      height: 450,
                      width: 500,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Cancellation Failed",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
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
