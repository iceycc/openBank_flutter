import 'package:flutter/material.dart';

class InkRsponseButtom extends StatefulWidget {
  final btnText;
  final btnColor; // 红色
  final splashColor; // 水波纹颜色
  final onTap ; // 触发点击事件
  final borderColor; // 边框颜色
  final textColor; //文案颜色
  const InkRsponseButtom({
    Key key,
    this.borderColor, 
    this.btnColor, 
    @required this.btnText,
    this.onTap,
    this.splashColor,
    this.textColor
  }):super(key: key);
  @override
  _InkRsponseButtomState createState() => _InkRsponseButtomState();
}

class _InkRsponseButtomState extends State<InkRsponseButtom> {
  String btnText = '文案';
  String btnColor = '0xFFff0000'; // 红色
  String splashColor = '0xFFDCDCDC'; // 水波纹颜色
  Function onTap = () {
    print('click111');
  }; // 触发点击事件
  String borderColor = '0xFFFFFFFF'; // 边框颜色
  String textColor = '0xFFFFFFFF'; //文案颜色
  @override
  void initState() {
    super.initState();
    btnText = widget.btnText ?? btnText;
    btnColor = widget.btnColor ?? btnColor;
    splashColor = widget.splashColor ?? splashColor;
    onTap = widget.onTap ?? onTap;
    borderColor = widget.borderColor ?? borderColor;
    textColor = widget.textColor ?? textColor;
  }
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Color(int.parse(btnColor)),
      child: new Ink(
        //设置背景
        decoration: new BoxDecoration(
          //背景
          color: Colors.red,
          //设置四周圆角 角度
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          //设置四周边框
          border: new Border.all(
            width: 1,
            color: Color(int.parse(borderColor)),
          ),
        ),
        child: new InkResponse(
          borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
          //点击或者toch控件高亮时显示的控件在控件上层,水波纹下层
          //highlightColor: Colors.deepPurple,
          //点击或者toch控件高亮的shape形状
          highlightShape: BoxShape.rectangle,
          //.InkResponse内部的radius这个需要注意的是，我们需要半径大于控件的宽，如果radius过小，显示的水波纹就是一个很小的圆，
          //水波纹的半径
          radius: 300.0,
          //水波纹的颜色
          splashColor: Color(int.parse(splashColor)),
          //true表示要剪裁水波纹响应的界面   false不剪裁  如果控件是圆角不剪裁的话水波纹是矩形
          containedInkWell: true,
          //点击事件
          onTap: () {
            onTap();
          },
          child: Container(
            //设置 child 居中
            alignment: Alignment(0, 0),
            height: 45.0,
            width: 350,
            child: Text(
              "$btnText",
              style: TextStyle(
                color: Color(int.parse(textColor)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
