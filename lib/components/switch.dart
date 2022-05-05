import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AppSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      borderWidth: 5,
      minWidth: 50,
      initialLabelIndex: 1,
      cornerRadius: 1000.0,
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.blueGrey[50],
      inactiveFgColor: Colors.white,
      totalSwitches: 2,
      icons: [
        Icons.cloud,
        Icons.wb_sunny,
      ],
      iconSize: 30.0,
      activeBgColors: [[Colors.blue, Colors.blueGrey], [Colors.yellow, Colors.orange]],
      //animate: true, // with just animate set to true, default curve = Curves.easeIn
      curve: Curves.bounceInOut, // animate must be set to true when using custom curve
      onToggle: (index) {
        print('switched to: $index');
      },
      radiusStyle: true,
    );
  }
}
