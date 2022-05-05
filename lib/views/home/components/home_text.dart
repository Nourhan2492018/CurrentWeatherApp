import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  @override
  late String cap;
  double font;
  final fontWeight,colorText;

  HomeText(this.cap, this.font, this.fontWeight, this.colorText);

  Widget build(BuildContext context) {
    return Text(
      cap,
      style: TextStyle(
        fontSize: font,
        fontWeight: fontWeight,
        color: colorText,
      ),
    );
  }
}
