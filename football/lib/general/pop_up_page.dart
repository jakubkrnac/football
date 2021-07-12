import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:football/general/space.dart';

class PopUpPage extends StatelessWidget {
  PopUpPage(this.context, this.kid, [this.title = ""]);

  Widget kid;
  BuildContext context;
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColorDark,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    top: MediaQuery.of(context).padding.top + 16,
                    right: 16,
                    bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      constraints: BoxConstraints(minHeight: 0, minWidth: 0),
                      padding: EdgeInsets.only(bottom: 16),
                      icon: Icon(Icons.arrow_back_ios_rounded, size: 17),
                      color: Color(0xFFFFFFFF), //?color
                    ),
                    kid,
                    Space(8, true),
                    if (title != "")
                      Text(title,
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 22,
                              fontWeight: FontWeight.w700)),
                  ],
                )),
          ],
        ));
  }

  void open() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PopUpPage(context, kid, title),
        ));
  }
}
