import 'package:beautiful_list/model/lesson.dart';
import 'package:beautiful_list/data/car_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailPage extends StatelessWidget {
  final Lesson lesson;

  DetailPage({this.lesson});

  Widget topContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/drive.jpg'),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.only(left: 40.0, top: 40.0, right: 40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromRGBO(58, 66, 86, .9)
          ),
          child: Center(
            child: topContentText(),
          ),
        ),
        Positioned(
          left: 20.0,
          top: 40.0,
          child: InkWell(
            child: Icon(
              IconData(
                0xF3D5, 
                fontFamily: CupertinoIcons.iconFont, 
                fontPackage: CupertinoIcons.iconFontPackage
              ),
              color: Colors.white,
              size: 35.0,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }

  Widget levelIndicator() {
    return Container(
      child: LinearProgressIndicator(
        backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
        value: lesson.indicatorValue,
        valueColor: AlwaysStoppedAnimation(Colors.lightGreenAccent),
      ),
    );
  }

  Widget coursePrice() {
    return Container(
      padding: EdgeInsets.only(top: 6.0, right: 6.0, left: 8.0, bottom: 6.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Text(
        "\$" + lesson.price.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget topContentText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 80.0),
        Icon(
          CarIcons.taxi,
          color: Colors.white,
          size: 40.0,
        ),
        Container(
          padding: EdgeInsets.only(top: 5.0),
          width: 70.0,
          child: Divider(color: Colors.lightGreenAccent),
        ),
        Container(
          padding: EdgeInsets.only(right: 120.0),
          child: Text(
            lesson.title,
            style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w100, letterSpacing: .2),
          ),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 1, child: levelIndicator()),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  lesson.level, 
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Expanded(flex: 1, child: coursePrice(),)
          ],
        )
      ],
    );
  }

  Widget bottomContent(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 40.0, top: 30.0, right: 40.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              lesson.content, 
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15, height: 1.15),
            ),
            SizedBox(height: 18.0),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 12.0),
                onPressed: () {},
                color: Color.fromRGBO(58, 66, 86, 1.0),
                child: Text('TAKE THIS LESSON', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent(context),
          bottomContent(context)
        ],
      ),
    );
  }
}