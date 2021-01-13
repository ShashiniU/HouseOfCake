import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorAlert extends StatelessWidget {
  final String message;
  const ErrorAlert({Key key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message),
      actions: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.pink,
          child: Center(
            child: Text("ok"),
          ),
        )
      ],
    );
  }
}
