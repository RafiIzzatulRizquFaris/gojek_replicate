import 'package:flutter/material.dart';

class Account extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AccountPage();
  }

}

class AccountPage extends State<Account>{
  @override
  build(BuildContext context) {
    return Center(
      child: Text("Account"),
    );
  }

}