import 'package:flutter/material.dart';
import 'package:beautiful_list/list_card.dart';

class ListContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListCard();
        },
      ),
    );
  }
}