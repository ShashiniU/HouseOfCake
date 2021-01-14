import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustumTextField extends StatelessWidget {
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final Function validator;
  final TextEditingController controller;

  final IconData data;
  final String hintText;
  bool isObsecure = true;

  CustumTextField(
      {Key key,
      this.onChanged,
      this.controller,
      this.validator,
      this.textInputAction,
      this.focusNode,
      this.onSubmitted,
      this.data,
      this.hintText,
      this.isObsecure})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        obscureText: isObsecure,
        cursorColor: Colors.white,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        onChanged: onChanged,
        controller: controller,
        textInputAction: textInputAction,
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent)),
          prefixIcon: Icon(
            data,
            color: Colors.white,
          ),
          focusColor: Colors.transparent,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 18,
            letterSpacing: 1.5,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(.3),
        ),
      ),
    );
  }
}
