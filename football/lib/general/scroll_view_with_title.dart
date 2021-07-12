import 'package:flutter/material.dart';
import 'package:football/general/pop_up_page.dart';
import 'package:football/general/space.dart';

class ScrollViewWithTitle extends StatelessWidget {
  ScrollViewWithTitle(this.title, this.children);

  String title;
  List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [HeadlineAndButton(title), ScrollView(children)],
    );
  }
}

class HeadlineAndButton extends StatelessWidget {
  HeadlineAndButton(this.title);

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(title,
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 22,
                fontWeight: FontWeight.w700)),
        TextButton(
            style: ButtonStyle(
                overlayColor:
                    MaterialStateColor.resolveWith((states) => Color(0x0))),
            onPressed: (PopUpPage(context, Container()).open),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Text("Více",
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w500)),
              Space(1),
              Icon(Icons.arrow_forward_ios_rounded,
                  size: 18, color: Theme.of(context).accentColor)
            ])),
      ]),
    );
  }
}

class ScrollView extends StatelessWidget {
  ScrollView(this.children);

  List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Row(children: children),
    );
  }
}
