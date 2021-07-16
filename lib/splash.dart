import 'package:facility_management_system/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splash: "assets/fms.png",
        duration: 5000,
        pageTransitionType: PageTransitionType.leftToRight,
        splashTransition: SplashTransition.slideTransition,
        splashIconSize: 1000,
        backgroundColor: Colors.black,
        nextScreen: Login(),
      ),
    );
  }
}
