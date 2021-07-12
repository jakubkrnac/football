import 'package:flutter/material.dart';
import 'package:football/home_screen/header/header.dart';
import 'package:football/home_screen/video/video.dart';
import 'package:football/home_screen/players/players.dart';
import 'package:football/general/space.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Theme.of(context).primaryColorDark,
        body: Stack(children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [Header(), Video(), Players(), Space(64, true)],
          ),
          Container(
            height: MediaQuery.of(context).padding.top,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Theme.of(context).primaryColorDark.withOpacity(0.5),
                  Color(0x0)
                ])),
          )
        ]));
  }
}
