import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  Space(this.amount, [this.axis = false]);

  double amount;
  bool axis;

  @override
  Widget build(BuildContext context) {
    if (!axis)
      return Container(width: amount);
    else
      return Container(height: amount);
  }
}
