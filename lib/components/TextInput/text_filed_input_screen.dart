import 'package:flutter/material.dart';

class TextFiledInputSreen extends StatefulWidget {
  final isTelephoneprefix; // 是否显示电话输入框前缀
  final placeholder; // 默认文案显示
  final isPassworld; // 是否为密码输入框【密码输入框隐藏文案】
  final onChange;// change事件
  const TextFiledInputSreen({
    Key key,
    this.isTelephoneprefix,
    this.placeholder,
    this.isPassworld,
    this.onChange,
  }) : super(key: key);
  @override
  _TextFiledInputSreenState createState() => _TextFiledInputSreenState();
}

class _TextFiledInputSreenState extends State<TextFiledInputSreen> {
  String placeholder = '请输入文字';
  bool isTelephoneprefix = false;
  Function onChange = (e){print(e);};
  var controller = TextEditingController();
  // FocusNode _focusNode = new FocusNode();
  bool isPassworld = false;
  @override
  void initState() {
    super.initState();
    this.placeholder = widget.placeholder ?? this.placeholder;
    this.isTelephoneprefix = widget.isTelephoneprefix ?? this.isTelephoneprefix;
    this.isPassworld = widget.isPassworld ?? this.isPassworld;
    this.onChange = widget.onChange ?? this.onChange;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Stack(
        children: <Widget>[
          TextField(
            controller: controller, //设置controller
            keyboardType: TextInputType.number,
            obscureText: isPassworld,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 10.0),
              hintText: '$placeholder',
            ),
            inputFormatters: [],
            onChanged: (e) {
              onChange(e);
            },
            autofocus: false,
          ),
          Positioned(
              top: 9.0,
              right: 0,
              child: InkWell(
                child: Icon(Icons.close),
                onTap: () {
                  print('关闭');
                  setState(() {
                    controller.clear();
                  });
                },
              )),
          Positioned(
            top: 13.0,
            child: isTelephoneprefix
                ? Text('+86')
                : Icon(
                    Icons.vpn_key,
                    size: 18.0,
                  ),
          ),
        ],
      ),
    );
  }
}
