import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:openbank/config/router_handlers.dart';

class Routers {
  static String root = "/";
  // static String login = "/login";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(handlerFunc:
        (BuildContext context, Map<String, List<String>> parameters) {
      print("handler not find");
    });
    router.define(root, handler: loginHandle);
  }
}
