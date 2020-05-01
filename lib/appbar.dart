import 'package:flutter/material.dart';

class CustomAppBar extends AppBar{

  CustomAppBar(): super(elevation: 0.25, backgroundColor: Colors.white, flexibleSpace: gojekAppBar());

  static Widget gojekAppBar(){
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/img_gojek_logo.png", height: 50, width: 100,),
          Row(
            children: [
              Container(
                height: 28,
                width: 28,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orangeAccent
                ),
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.local_bar,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0x50FFD180)
                ),
                child: Text("2.441 points", style: TextStyle(fontSize: 14),),
              )
            ],
          )
        ],
      ),
    );
  }
}