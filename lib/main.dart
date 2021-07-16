import 'package:flutter/material.dart';
import 'package:facility_management_system/splash.dart';

void main() => { runApp(MyApp()) };

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facility Management System",
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
