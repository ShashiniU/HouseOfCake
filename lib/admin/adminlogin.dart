import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/admin/Uploadpage.dart';

import 'package:flutter_application_2/screens/custumtextfield.dart';

class AdminLoginScreen extends StatefulWidget {
  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController _loginpassword = TextEditingController();
  final TextEditingController _loginemailaddress = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.purple[600],
              Colors.purpleAccent[400],
              Colors.pink[200]
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: Center(
              child: Column(children: <Widget>[
            SizedBox(
              height: 120,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Welcome to HOUSE OF CAKE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  CustumTextField(
                    controller: _loginemailaddress,
                    data: Icons.person,
                    hintText: 'Email Address',
                    isObsecure: false,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustumTextField(
                    controller: _loginpassword,
                    data: Icons.vpn_key,
                    hintText: 'Password',
                    isObsecure: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
              SizedBox(
                width: 30,
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 75, right: 75),
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 40,
                  child: RaisedButton(
                      onPressed: () {
                        _submitForm();
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text('LOGIN',
                          style: TextStyle(
                            color: Colors.purple[600],
                            fontSize: 20,
                          ))),
                )),
          ]))),
    );
  }

  Future<void> _alertDialogBuilder(String error) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Error"),
            content: Container(
              child: Text(error),
            ),
            actions: [
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  Future<String> _loginAccount() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _loginemailaddress.text.trim(),
        password: _loginpassword.text.trim(),
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak';
      } else if (e.code == 'email already exist') {
        return 'The account already exists for that email';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  void _submitForm() async {
    String _loginfeedback = await _loginAccount();
    if (_loginfeedback != null) {
      _alertDialogBuilder(_loginfeedback);
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => UploadPage()));
    }
  }
}
