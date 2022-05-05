import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget{
  final icon;
  final color;
  double size;
  AppIcon(this.icon,this.color,this.size);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Icon(icon,
        color: color,
        size: size,
    );
  }


}