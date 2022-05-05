import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/views/home/components/colum_weather_info.dart';

class HomeRow extends StatelessWidget {
  List<String> images,txtValues,txtNames;
  HomeRow(this.images, this.txtValues, this.txtNames);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColumnWeather(images[0],txtValues[0],txtNames[0]),
        ColumnWeather(images[1],txtValues[1],txtNames[1]),
        ColumnWeather(images[2],txtValues[2],txtNames[2]),
      ],
    );
  }
}
