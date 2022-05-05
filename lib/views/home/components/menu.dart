import 'package:flutter/material.dart';
import 'package:weather/components/app_icon.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: AppIcon(Icons.arrow_drop_down_outlined,Colors.blue,25),
      itemBuilder:(context)=>[
        PopupMenuItem(
          child: Text("Egypt"),
          value: 1,
          onTap: ()
          {
          },
        ),
        PopupMenuItem(
          child: Text("Landon"),
          value: 2,
          onTap: ()
          {
          },
        ),
        PopupMenuItem(
          child: Text("Austria"),
          value: 2,
          onTap: ()
          {
          },
        ),
        PopupMenuItem(
          child: Text("Monaco"),
          value: 2,
          onTap: ()
          {
          },
        ),
        PopupMenuItem(
          child: Text("Turkey"),
          value: 2,
          onTap: ()
          {
          },
        ),
      ],
    );
  }
}
