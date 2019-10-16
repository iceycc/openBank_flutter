import 'package:flutter/material.dart';
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('登录')
      ),
      body:Center(
        child:Text('登录',
         style:TextStyle(
           fontSize: 30,
           color: Colors.green,
           letterSpacing: 3,
           fontWeight: FontWeight.bold
        ),
        overflow: TextOverflow.ellipsis,// 溢出
        maxLines: 1,
    ))
    );
  }
}