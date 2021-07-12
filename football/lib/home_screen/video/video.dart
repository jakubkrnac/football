import 'package:flutter/material.dart';
import 'package:football/general/scroll_view_with_title.dart';
import 'package:football/home_screen/video/video_tile.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollViewWithTitle("Pravě letí", [
      VideoTile("Souboj o trůn", "turnaj 22"),
      VideoTile("V kůži bojovníkov FISHER FISHER", "hattrick"),
      VideoTile("Souboj o trůn", "turnaj 22"),
    ]);
  }
}
