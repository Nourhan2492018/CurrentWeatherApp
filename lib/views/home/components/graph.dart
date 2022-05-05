import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
class Graph extends StatelessWidget {
  final List<Feature> features = [
    Feature(
      title: "Visibility  (J/m^2)",
      color: Colors.blue,
      data: [0.2,-0.3,-0.1,0.2,0.5,0.3,0.0,0.9,0.3, 0.4,0.8, 0.4, 0.7, 0.6,0.02,0.4],
    ),
    Feature(
      title: "Humidity (m/c)",
      color: Colors.greenAccent,
      data: [0.4,0.8, 0.4, 0.7, 0.6,0.02,0.4,0.2,-0.3,-0.1,0.2,0.5,0.3,0.0,0.9,0.3],
    ),
    Feature(
      title: "Wind Speed (m/s)",
      color: Colors.pink,
      data: [1, 0.8, 6, 0.7, 0.3, 8,-0.1,0.2,0.5,0.3,0.0,0.9,0.3],
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: LineGraph(
          features: features,
          size: Size(1000, 400),
          labelX: ['Day 1', 'Day 2','Day 3','Day 3','Day 3', 'Day 3', 'Day 4', 'Day 5','Day 1','Day 1','Day 1','Day 1','Day 1','Day 1','Day 1''Day 1''Day 1','Day 1''Day 1'],
          labelY: ['20%', '40%', '60%', '80%','80%','80%','80%','80%','80%', '100%'],

        showDescription: true,
        graphColor: Colors.white30,
        graphOpacity: 0.1,
        verticalFeatureDirection: true,
        descriptionHeight: 130,

        ),
    );
  }
}
