import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:weather/components/switch.dart';
import 'package:weather/views/home/components/menu.dart';
import '../../../components/drop_dwon.dart';
import '../../../components/app_icon.dart';
import '../../../components/app_icon_button.dart';
import '../../../components/text_info.dart';
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// you can add more fields that meet your needs
  static int op=0;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.2,
      backgroundColor: Colors.white.withOpacity(1),
      bottomOpacity:2,
      actions: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey[50],
                minRadius: 20,
                child: AppIconButton(AppIcon(Icons.wrap_text,Colors.blue,25),Colors.blue,25)),
            SizedBox(width:50,),
            TextInfo('Location Country',10, FontStyle.normal, Colors.blue),
            Menu(),
            SizedBox(width:20,),
            AppSwitch(),
          ],
        ),
      ],
    );
  }
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}