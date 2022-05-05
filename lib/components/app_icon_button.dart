import 'package:flutter/material.dart';
import 'package:weather/components/app_icon.dart';
class AppIconButton extends StatelessWidget{
  AppIcon icon;
  final color;
  double size;
  AppIconButton(this.icon,this.color,this.size);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return IconButton(

      iconSize:size ,
      icon: icon,
      onPressed: (){



      },
    );
  }


}