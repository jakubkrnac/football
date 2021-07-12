import 'dart:async';
import 'package:flutter/material.dart';
import 'package:football/general/space.dart';

class Countdown extends StatefulWidget {
  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> with TickerProviderStateMixin {
  int dd = 0, hh = 0, mm = 0, ss = 0;

  DateTime date = DateTime(2022, 07, 09, 20, 00);
  Duration remaining = DateTime.now().difference(DateTime.now());
  late Timer t;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    t = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        remaining = DateTime.now().difference(date);
        ss = remaining.inSeconds.abs();
        dd = (ss / (24 * 3600)).toInt();
        ss = ss % (24 * 3600);
        hh = (ss / 3600).toInt();
        ss %= 3600;
        mm = (ss / 60).toInt();
        ss %= 60;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (dd < 100)
          Padding(
              padding: EdgeInsets.only(right: 2),
              child: Text(dd.toString().padLeft(2, '0'),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)))
        else
          Padding(
              padding: EdgeInsets.only(right: 2),
              child: Text(dd.toString(),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
        Text("dní",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        Space(8),
        Padding(
            padding: EdgeInsets.only(right: 2),
            child: Text(hh.toString().padLeft(2, '0'),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
        Text("hod",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        Container(width: 8),
        Padding(
            padding: EdgeInsets.only(right: 2),
            child: Text(mm.toString().padLeft(2, '0'),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
        Text("min",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        Space(8),
        Padding(
            padding: EdgeInsets.only(right: 2),
            child: Text(ss.toString().padLeft(2, '0'),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
        Text("sek",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        Space(8),
      ],
    );
  }
}
