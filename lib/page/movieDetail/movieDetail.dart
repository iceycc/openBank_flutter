import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:openbank/components/Header/header.dart';

class MovieDetail extends StatelessWidget {
  MovieDetail({Key key,this.title,this.imgUrl}):super(key:key);
  final String title;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: 
      Image(image: NetworkImage(imgUrl))
    ));
  }
}