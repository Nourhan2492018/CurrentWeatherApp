import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget
{
 late String cap;
 double font;
 final style,colorText;

 TextInfo(this.cap,  this.font, this.style, this.colorText);

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
    cap,
    style: TextStyle(
    fontSize: font,
    fontStyle:style,
    color: colorText,
    ),
    );
  }

}