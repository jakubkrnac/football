import 'package:flutter/material.dart';
import 'package:football/general/scroll_view_with_title.dart';
import 'package:football/home_screen/players/player_tile.dart';

class Players extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollViewWithTitle("Hráči", [
      PlayerTile("Jon Doe", "champion"),
      PlayerTile("Jon Doe", "2. místo"),
      PlayerTile("Jon Doe", "3. místo")
    ]);
  }
}
