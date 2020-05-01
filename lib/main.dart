import 'package:flutter/material.dart';
import 'package:gojekreplicate/app_color.dart';
import 'package:gojekreplicate/launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.green,
        accentColor: AppColor.green
      ),
      home: Launcher(),
    );
  }
}
