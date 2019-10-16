import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:openbank/page/login/login.dart';

var loginHandle = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  return LoginView();
});