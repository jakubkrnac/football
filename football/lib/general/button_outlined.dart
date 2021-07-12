import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  ButtonOutlined(this.title, this.callback);

  String title;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
            BorderSide(color: Theme.of(context).primaryColorDark, width: 2)),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 16, horizontal: 30)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        overlayColor: MaterialStateColor.resolveWith(
            (states) => Theme.of(context).primaryColorDark.withOpacity(0.25)),
      ),
      child: Text(title,
          style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 17,
              fontWeight: FontWeight.w600)),
      onPressed: callback,
    );
  }
}
