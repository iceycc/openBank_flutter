import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({Key key,@required this.title}):super(key:key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
      Icon(Icons.arrow_back_ios),
      Container(child: Text('$title'),
        padding: EdgeInsets.only(left: 120.0),
      )
    ],);
  }
}  