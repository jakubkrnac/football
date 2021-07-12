import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:football/general/pop_up_page.dart';
import 'package:football/home_screen/video/video_play.dart';

class VideoTile extends StatelessWidget {
  VideoTile(this.title, this.category);

  late String title, category;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: (PopUpPage(context, VideoPlay(), title).open),
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide.none),
          padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 16)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
          overlayColor:
              MaterialStateColor.resolveWith((states) => Color(0x33000000)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [thumbnail, playButton, premiumBadge]),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(category.toUpperCase(),
                  style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 11,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              width: 225,
              padding: EdgeInsets.only(top: 4),
              child: Text(
                title,
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
                maxLines: 2,
              ),
            ),
          ],
        ));
  }

  Widget thumbnail = Container(
      width: 225,
      height: 125,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/tournament.jpg'),
              fit: BoxFit.fitWidth),
          borderRadius: BorderRadius.all(Radius.circular(6))));

  Widget playButton = Container(
      width: 225,
      height: 125,
      child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.play_arrow_rounded,
                        color: Color(0xFFFFFFFF), size: 50),
                  )))));

  Widget premiumBadge = Container(
      width: 225,
      height: 125,
      padding: EdgeInsets.all(4),
      child: Align(
          alignment: Alignment.topRight,
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(2)),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(
                    height: 20,
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                    child: Text("Premium",
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                  )))));
}
