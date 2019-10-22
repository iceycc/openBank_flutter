import 'package:flutter/material.dart';
// import '../../bottom_app_bar_er.dart';
// import '../initialization_welcome/initialization_welcome_screen.dart';
import '../login/login.dart';


class InitializationWelcome extends StatefulWidget {
	@override
	_InitializationWelcomeState createState() => _InitializationWelcomeState();
}

class _InitializationWelcomeState extends State<InitializationWelcome> with SingleTickerProviderStateMixin{
	AnimationController _controller;
	Animation _animation;


	@override
	void initState() {
		super.initState();
		_controller = AnimationController(vsync: this, duration: Duration(milliseconds: 5000));
		_animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

		_animation.addStatusListener((status){
			if(status == AnimationStatus.completed) {
				Navigator.of(context).pushAndRemoveUntil(
					MaterialPageRoute(builder: (context) => Login()),
					(route) => route == null);
			}
		});
		_controller.forward();
	}
	@override
	void dispose() {
		_controller.dispose();
		super.dispose();
	}
	@override
	Widget build(BuildContext context) {
		return FadeTransition( //透明度动画组件
			opacity: _animation,  //执行动画
			child: Image.asset(  //网络图片
				'images/welcome.png',
				scale: 2.0,  //进行缩放
				fit:BoxFit.cover  // 充满父容器
			),
    	);
	}
}