import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:football/general/button_outlined.dart';
import 'package:football/general/button_filled.dart';
import 'package:football/general/pop_up_page.dart';
import 'package:football/general/space.dart';
import 'package:football/home_screen/header/countdown.dart';

class PromoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TopPart(), BottomPart()],
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 16, bottom: 8),
                decoration: new BoxDecoration(color: Color(0xBF333333)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("NEJBLIŽŠÍ TURNAJ",
                        style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).primaryColorLight,
                            fontWeight: FontWeight.w600)),
                    Space(10, true),
                    Text("TURNAJ 22",
                        style: TextStyle(
                            fontSize: 32,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w700)),
                    Space(4, true),
                    Text("So 07. 07. 2022 v 19:00",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColorLight,
                            fontWeight: FontWeight.w400)),
                    TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateColor.resolveWith(
                                (states) => Color(0x0))),
                        onPressed: () {
                          PopUpPage(context, Container()).open();
                        },
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Text("Více informací o turnaji",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w600)),
                          Space(2),
                          Icon(Icons.arrow_forward_ios_rounded,
                              size: 17, color: Theme.of(context).accentColor)
                        ])),
                  ],
                ))));
  }
}

class BottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Countdown(),
        Space(16, true),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonFilled("Koupit ZZP", PopUpPage(context, Container()).open),
            ButtonOutlined("Vstupenky", PopUpPage(context, Container()).open),
          ],
        )
      ]),
    );
  }
}
