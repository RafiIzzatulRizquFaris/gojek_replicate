import 'package:flutter/material.dart';

class Inbox extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return InboxPage();
  }

}

class InboxPage extends State<Inbox>{
  @override
  build(BuildContext context) {
    return Center(
      child: Text("Inbox"),
    );
  }

}