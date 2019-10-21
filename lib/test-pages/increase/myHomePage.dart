import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  // 用来接受参数
  MyHomePage({Key key, @required this.title, this.name}) : super(key: key);
  final title;
  final name;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  void _addFn() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.title}${widget.name}')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //主轴剧中分布
        children: <Widget>[
          Text('top'),
          Text('center'),
          Text('bottom'),
          Text('$_counter',
              // style: Theme.of(context).textTheme.display1,
              style: TextStyle(color: Colors.greenAccent, fontSize: 30))
        ],
      )),
      floatingActionButton: FloatingActionButton(
          tooltip: 'increeasement', // 长按提示
          onPressed: _addFn,
          child: Icon(Icons.add)),
    );
  }
}
