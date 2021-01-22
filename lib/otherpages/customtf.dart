import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustumTextFieldOthers extends StatelessWidget {
  final TextInputAction textInputAction;

  final TextEditingController controller;

  final String hintText;
  bool isObsecure = true;

  CustumTextFieldOthers(
      {Key key,
      this.controller,
      this.textInputAction,
      this.hintText,
      this.isObsecure})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 5, right: 5),
      child: TextField(
        obscureText: isObsecure,
        cursorColor: Colors.white,
        controller: controller,
        textInputAction: textInputAction,
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.pink),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.pink)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.pink)),
          focusColor: Colors.transparent,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 18,
            letterSpacing: 1.5,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(.3),
        ),
      ),
    );
  }
}
