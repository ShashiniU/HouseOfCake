import 'package:flutter/material.dart';

final paymentController = TextEditingController();
final nameController = TextEditingController();
final numberController = TextEditingController();

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
          body: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(5),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 2,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    children: <Widget>[],
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.80,
                    child: Text(
                      "Your Shopping",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Times New Roman",
                      ),
                    )),
                SizedBox(height: 30),
                Column(children: [
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(children: <Widget>[
                        SizedBox(
                          child: Image.asset("assets/cake.jpg"),
                          height: 200,
                          width: 150,
                        ),
                        Text(
                          " Humming bird cake",
                          style: TextStyle(
                            fontFamily: "Times New Roman",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(width: 20),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.red)),
                          color: Colors.red,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {},
                          child: Text(
                            "Cancel".toLowerCase(),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )
                      ]))
                ]),
                SizedBox(height: 370),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: Text(
                          "Total Amount",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Times New Roman",
                          ),
                        )),
                    SizedBox(width: 2),
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
                              left: 0.01, bottom: 11, top: 11, right: 0),
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(color: Colors.pinkAccent)),
                      onPressed: () {
                        paymentController.text = 'Rs 2100.00';
                      },
                      color: Colors.pinkAccent,
                      padding: EdgeInsets.all(5),
                      textColor: Colors.white,
                      child: Text("check".toLowerCase(),
                          style: TextStyle(fontSize: 18)),
                    )
                  ],
                ))
              ])),
        ));
  }
}
