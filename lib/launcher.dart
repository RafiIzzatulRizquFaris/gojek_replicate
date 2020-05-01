import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gojekreplicate/dashboard.dart';

class Launcher extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LauncherPage();
  }

}

class LauncherPage extends State<Launcher>{

  @override
  void initState() {
    super.initState();
    startLaunching(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/img_gojek_logo.png", height: 100, width: 200,),
      ),
    );
  }

}

startLaunching(BuildContext context) async{
  var duration = Duration(seconds: 2);
  return Timer(duration, (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return Dashboard();
    }));
  });
}