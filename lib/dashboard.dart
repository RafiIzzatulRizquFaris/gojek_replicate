import 'package:flutter/material.dart';
import 'package:gojekreplicate/app_color.dart';
import 'package:gojekreplicate/menu/account.dart';
import 'package:gojekreplicate/menu/chat.dart';
import 'package:gojekreplicate/menu/home.dart';
import 'package:gojekreplicate/menu/inbox.dart';
import 'package:gojekreplicate/menu/order.dart';

class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DashboardPage();
  }

}

class DashboardPage extends State<Dashboard>{

  List<Widget> page = [Home(), Order(), Chat(), Inbox(), Account()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: page[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.grey,),
                    activeIcon: Icon(Icons.home, color: AppColor.green,),
                    title: Text("Beranda")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assignment, color: Colors.grey,),
                    activeIcon: Icon(Icons.assessment, color: AppColor.green,),
                    title: Text("Pesanan")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat, color: Colors.grey,),
                    activeIcon: Icon(Icons.chat, color: AppColor.green,),
                    title: Text("Chat")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.mail, color: Colors.grey,),
                    activeIcon: Icon(Icons.mail, color: AppColor.green,),
                    title: Text("Inbox")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.grey,),
                    activeIcon: Icon(Icons.person, color: AppColor.green,),
                    title: Text("Akun")
                ),
              ]
          ),
        ),
    );
  }

}