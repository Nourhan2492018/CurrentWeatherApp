import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/components/logo.dart';
import 'package:weather/views/authentication/login_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weather/views/home/home_view.dart';
class Splashview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash:Logo(),
        duration: 2000,
        nextScreen: LoginView(),
        splashTransition: SplashTransition.scaleTransition,
         pageTransitionType:PageTransitionType.fade,
        backgroundColor: Colors.white,
      splashIconSize: 200,
    );
  }
}

