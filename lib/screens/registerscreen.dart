import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_2/screens/custumtextfield.dart';
import 'package:flutter_application_2/screens/erroralert.dart';
import 'package:flutter_application_2/screens/home.dart';
import 'package:flutter_application_2/screens/loginscreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _contactnumber = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
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
            height: 100,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 30,
              ),
              Text(
                'Create an Account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                CustumTextField(
                  controller: _firstname,
                  data: Icons.person,
                  hintText: 'First Name',
                  isObsecure: false,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                CustumTextField(
                  controller: _lastname,
                  data: Icons.person,
                  hintText: 'Last Name',
                  isObsecure: false,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                CustumTextField(
                  controller: _emailaddress,
                  data: Icons.email,
                  hintText: 'Email Address',
                  isObsecure: false,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                CustumTextField(
                  controller: _contactnumber,
                  data: Icons.phone,
                  hintText: 'Phone Number',
                  isObsecure: false,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                CustumTextField(
                  controller: _password,
                  data: Icons.vpn_key,
                  hintText: 'Password',
                  isObsecure: true,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                CustumTextField(
                  controller: _confirmpassword,
                  data: Icons.vpn_key,
                  hintText: 'Confirm Password',
                  isObsecure: true,
                  textInputAction: TextInputAction.next,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 75, right: 75),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 40,
                child: RaisedButton(
                    onPressed: () {
                      checkErrors();
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text('SIGNUP',
                        style: TextStyle(
                          color: Colors.purple[600],
                          fontSize: 20,
                        ))),
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Already User?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ])),
      ),
    );
  }

  Future<void> checkErrors() async {
    if (_firstname.text.isEmpty || _lastname.text.isEmpty)
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlert(
              message: 'Please fully complete the form before proceed',
            );
          });
    else if (_password.text != _confirmpassword.text)
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlert(
              message: 'Password does not match',
            );
          });
    else {
      _submitForm();
    }
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

  Future<String> _createAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailaddress.text.trim(),
        password: _password.text.trim(),
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
    String _createAccountFeedback = await _createAccount();
    if (_createAccountFeedback != null) {
      _alertDialogBuilder(_createAccountFeedback);
    } else {
      addUser();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  // ignore: missing_return
  Future<void> addUser() async {
    return users
        .add({
          'Fist Name': _firstname.text,
          'Last Name': _lastname.text,
          'Contact Number': _password.text,
          'Email Address': _emailaddress.text,
          'Password': _password.text,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
