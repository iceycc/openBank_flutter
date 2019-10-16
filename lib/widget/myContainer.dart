import 'package:flutter/material.dart';
class myContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('登录')
      ),
      body:Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.greenAccent),
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