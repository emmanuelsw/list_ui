import 'package:beautiful_list/model/lesson.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListCard extends StatelessWidget {
  final Lesson lesson;

  ListCard(this.lesson);

  Widget listTile(Lesson lesson) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        height: 50.0,
        padding: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(width: 1.0, color: Colors.white12),
          ),
        ),
        child: Icon(
          IconData(
            0xF2C1,
            fontFamily: CupertinoIcons.iconFont,
            fontPackage: CupertinoIcons.iconFontPackage,
          ),
          color: Colors.white,
          size: 30.0,
        ),
      ),
      title: Text(
        lesson.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15.5),
      ),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: LinearProgressIndicator(
                backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                value: lesson.indicatorValue,
                valueColor: AlwaysStoppedAnimation(Colors.lightGreenAccent),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(lesson.level, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
            ),
          ),
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
      child: listTile(lesson),
    );
  }
}
