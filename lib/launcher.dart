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
  initState() {
    super.initState();
    startLaunching(context);
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/img_gojek_logo.png", height: 200, width: 400,),
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