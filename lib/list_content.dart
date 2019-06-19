import 'package:flutter/material.dart';
import 'package:beautiful_list/list_card.dart';
import 'package:beautiful_list/data/lessons_data.dart';

class ListContent extends StatefulWidget {
  @override
  _ListContentState createState() => _ListContentState();
}

class _ListContentState extends State<ListContent> {
  List lessons;

  @override
  void initState() {
    super.initState();
    lessons = getLessons();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return ListCard(lessons[index]);
        },
      ),
    );
  }
}