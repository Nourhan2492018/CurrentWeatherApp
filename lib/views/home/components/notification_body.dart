import 'package:flutter/material.dart';
import 'package:weather/components/text_info.dart';
import 'package:weather/views/home/components/graph.dart';
import 'package:weather/views/home/components/home_row.dart';
import 'package:weather/views/home/components/home_text.dart';

class NotificationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 300,
            width: 300,
            image:AssetImage('assets/images/windy.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: HomeText("Discover The Weather In Your City By Graph",30, FontWeight.bold,Colors.blue),
          ),
          Expanded(child: SingleChildScrollView(child: Graph())),
          //TextInfo('Get to know your weather maps and radar precipitation forecast',1, FontStyle.normal, Colors.blue),

        ],
      ),
    );
  }
}
