import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beautiful_list/list_content.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Widget topAppBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      elevation: 0.1,
      title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
      actions: <Widget>[
        IconButton(
          icon: Icon(IconData(0xF394, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage)),
          onPressed: () {},
        )
      ],
    );
  }

  Widget bottomBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(0, 0, 0, .3), offset: Offset(-1.0, -1.0), blurRadius: 2.0)
        ]
      ),
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(IconData(0xF448, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(IconData(0xF3EA, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(IconData(0xF419, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(IconData(0xF412, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar(),
      bottomNavigationBar: bottomBar(),
      body: ListContent(),
    );
  }
}
