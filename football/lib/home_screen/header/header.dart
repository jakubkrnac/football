import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:football/home_screen/header/promo_container.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/tournament.jpg')),
          ),
        ),
        Container(
          height: 500,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                Theme.of(context).primaryColorDark,
                Color(0x00000000)
              ])),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, top: 255, right: 16),
          child: PromoContainer(),
        )
      ],
    );
  }
}
