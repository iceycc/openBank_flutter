import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:openbank/components/Header/header.dart';
import 'package:openbank/test-pages/movieDetail/movieDetail.dart';
class MoviceScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Header(title: '猫眼电影')),
      body: Column(
        children: <Widget>[
          _ImgScroll()
        ],
      ),
    );
  }
}

class _ImgScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List _list = [
      {
        "name": "催眠.裁决",
        "imgUrl":
            "https://p1.meituan.net/170.230/movie/8b3c68ad1fa140d70f886dc79053e6553508043.jpg"
      },
      {
        "name": '天气之子',
        "imgUrl":
            "https://p0.meituan.net/170.230/movie/ecca4f0b95340b2c57006a1bace4c3f91386100.jpg"
      },
      {
        "name": '叶问',
        "imgUrl":
            "https://p0.meituan.net/170.230/movie/4bfb08bfe0b8dd20776c6efc4015de6d995158.jpg"
      },
      {
        "name": '南方车站的聚会',
        "imgUrl":
            "https://p0.meituan.net/170.230/moviemachine/c65b14bd485d7b4bbaebd081291892ed983313.jpg"
      },
      {
        "name": "好莱坞旧事",
        "imgUrl":
            "https://p1.meituan.net/170.230/moviemachine/c2baef4bf563717bd3fa7ee49d2ee963482871.jpg"
      }
    ];
    return Container(
        height: 238,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int i) {
            return _imgBox(imgUrl: _list[i]['imgUrl'],title:_list[i]['name']);
          },
        )
        //  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        //   _imgBox(imgUrl: ''),
        // ]),
        );
  }
}

class _imgBox extends StatelessWidget {
  _imgBox({Key key, @required this.imgUrl,@required this.title}) : super(key: key);
  final String imgUrl;
  final String title;
  onTapFn(context){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      // return MovieDetail();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
         print(context);
           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      // return MovieDetail(title: title,imgUrl: imgUrl,);
    }));
      },
      child: Container(
      width: 170,
      decoration: BoxDecoration(color: Colors.black),
      child: Image(
        image: NetworkImage('$imgUrl'), // 网络图片
      ),
    ),);
  }
}
