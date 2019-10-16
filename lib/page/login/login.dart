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
        children: <Widget>[BicaiTitle(), LoginInput()],
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

class LoginInput extends StatefulWidget {
  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  // final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Container(
                child: TextField(
              keyboardType: TextInputType.phone,
              maxLength: 11,
              maxLengthEnforced: false,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'phone',
              ),
            )),
            Container(
                margin: EdgeInsets.only(top: 30),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
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
