import 'package:flutter/material.dart';

class Order extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return OrderPage();
  }

}

class OrderPage extends State<Order>{
  @override
  build(BuildContext context) {
    return Center(
      child: Text("Order"),
    );
  }

}