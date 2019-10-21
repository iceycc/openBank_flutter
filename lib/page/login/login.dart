import 'package:flutter/material.dart';
import 'package:openbank/components/Header/header.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Header(title: '安全登录'),
      ),
      body: Column(
        children: <Widget>[
          BicaiTitle(),
           _LoginInput()
           ],
      ),
    );
  }
}

class BicaiTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50,
              height: 46,
              child: Image(
                image: AssetImage('images/login-logo.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                '您好，欢迎来到比财',
                style: TextStyle(fontSize: 26),
              ),
            ),
          ],
        ));
  }
}

class _LoginInput extends StatefulWidget {
  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<_LoginInput> {
  // final TextEditingController _controller = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            InputBox(maxLength: 11,labelText:'手机号'),
            InputBox(maxLength: 6,labelText:'验证码'),
            FlatButton(
              color: Colors.blue,
              // highlightColor: Color.,
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("登录"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0)),
              onPressed: () {},
            )
          ],
        ));
  }
}

class InputBox extends StatelessWidget {
  InputBox({Key key,@required this.maxLength,@required this.labelText}):super(key:key);
  final int maxLength; 
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
                child: TextField(
              keyboardType: TextInputType.phone,
              maxLength:maxLength, // '$maxLength' as int
              maxLengthEnforced: false,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '$labelText',
              ),
            ));
  }
}