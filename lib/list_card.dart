import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListCard extends StatelessWidget {
  Widget listTile() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        height: 50.0,
        child: Icon(
          IconData(
            62319,
            fontFamily: CupertinoIcons.iconFont,
            fontPackage: CupertinoIcons.iconFontPackage,
          ),
          color: Colors.white,
          size: 30.0,
        ),
        padding: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(width: 1.0, color: Colors.white12),
          ),
        ),
      ),
      title: Text(
        "Introduction to Driving",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          Icon(Icons.linear_scale, color: Colors.yellowAccent),
          Text(" Beginner", style: TextStyle(color: Colors.white))
        ],
      ),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color.fromRGBO(84, 93, 110, 1.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, .3), 
            offset: Offset(1.0, 2.0), 
            blurRadius: 2.0
          )
        ]
      ),
      child: listTile(),
    );
  }
}
