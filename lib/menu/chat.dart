import 'package:flutter/material.dart';

class Chat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatPage();
  }

}

class ChatPage extends State<Chat>{
  @override
  build(BuildContext context) {
    return Center(
      child: Text("Chat"),
    );
  }

}