import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojekreplicate/app_color.dart';
import 'package:gojekreplicate/appbar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColor.grey,
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: Colors.white,
              child: Column(
                children: [
                  gopayMenu()
                ],
              ),
            )
          ],
        ),
      ),
      );
  }

  Widget gopayMenu(){
    return Container(
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff3164bd),
            Color(0xff295cb5)
          ]
        ),
        borderRadius: BorderRadius.all(Radius.circular(3))
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff3164bd),
                    Color(0xff295cb5)
                  ]
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(3), topRight: Radius.circular(3))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GOPAY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Rp. 120.000",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 32, right: 32, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_transfer.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Transfer",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_scan.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Scan",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_saldo.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Isi Saldo",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_menu.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Lainnya",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
