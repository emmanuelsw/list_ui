import 'package:flutter/material.dart';
import 'package:beautiful_list/list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List Demo',
      theme: ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: ListPage(title: 'Lessons'),
    );
  }
}

