import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './handlers.dart';
import '../page/increase/myHomePage.dart';
import '../page/lakes/lakes.dart';
import '../page/login/login.dart';
import '../page/movieScroll/movieScroll.dart';
import 'package:openbank/page/movieDetail/movieDetail.dart';
class Routers {
  static String root = "/";
  static String movieScroll = "/movieScroll";
  static String login = "/login";
  static String movieDetail = "/movieDetail";


  

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(handlerFunc:
        (BuildContext context, Map<String, List<String>> parameters) {
      print("handler not find");
    });
    router.define(root, handler: loginHandle);
    router.define(login, handler: loginHandle);
    router.define(movieScroll, handler: movieScrollHandle);
    router.define(movieDetail, handler: movieDetailHandle);

  }
}
