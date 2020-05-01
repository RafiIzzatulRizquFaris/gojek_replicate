import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar()
      : super(
            elevation: 0.25,
            backgroundColor: Colors.white,
            flexibleSpace: gojekAppBar());

  static Widget gojekAppBar() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 7,
            child: Container(
//              padding: EdgeInsets.only(top: 2),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border(
                        top: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey)
                    )
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "Cari layanan Gojek...",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0x50FFD180)),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 28,
                      width: 28,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.orangeAccent,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.cake,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Promo",
                        style: TextStyle(fontSize: 14),
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
