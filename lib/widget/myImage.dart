import 'package:flutter/material.dart';
class myImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('图片'),
      ),
      body: Center(
        child: Container(
         width:400,
         height: 400,
         decoration:BoxDecoration(color: Colors.greenAccent),
        //  margin: EdgeInsets.all(20.0),
        //  padding: EdgeInsets.all(20.0) ,
         child: Image(
          // image:NetworkImage('http://image.icey.cc/2018-10-07-003816.jpg'),// 网络图片
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.fitWidth,
        ),),  
        )
    );
  }
}