import 'package:flutter/material.dart';

class ButtonFilled extends StatelessWidget {
  ButtonFilled(this.title, this.callback);

  String title;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 16, horizontal: 30)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => Theme.of(context).primaryColorDark),
          overlayColor: MaterialStateColor.resolveWith((states) => Color(0x0))),
      child: Text(title,
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 17,
              fontWeight: FontWeight.w600)),
      onPressed: callback,
    );
  }
}
