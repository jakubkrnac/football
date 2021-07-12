import 'package:flutter/material.dart';
import 'package:football/general/pop_up_page.dart';

class PlayerTile extends StatelessWidget {
  PlayerTile(this.fullName, this.label);

  late String fullName, label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: (PopUpPage(context, Container()).open),
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide.none),
          padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 16)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
          overlayColor:
              MaterialStateColor.resolveWith((states) => Color(0x33000000)),
        ),
        child: Kid(fullName, label));
  }
}

class Kid extends StatelessWidget {
  Kid(this.fullName, this.label);

  late String fullName, label;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 125,
              height: 175,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/player.jpg'),
                      fit: BoxFit.fitWidth),
                  borderRadius: BorderRadius.all(Radius.circular(6)))),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(fullName,
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(label.toUpperCase(),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w700)),
          )
        ]);
  }
}
