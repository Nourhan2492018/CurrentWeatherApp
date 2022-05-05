import 'package:flutter/material.dart';
import 'package:weather/components/text_info.dart';
import 'package:weather/views/home/components/home_text.dart';
class ColumnWeather extends StatelessWidget {

  String imagePath,txtValue,txtName;

 ColumnWeather(this.imagePath, this.txtValue, this.txtName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Image(
            height: 50,
            width: 50,
            image:AssetImage(imagePath),
          ),
          HomeText("$txtValue k/m",20, FontWeight.bold,Colors.orangeAccent),
          TextInfo(txtName,13, FontStyle.normal, Colors.blue),
        ],
      ),
    );
  }
}
