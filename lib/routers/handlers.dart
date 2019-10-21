import 'package:fluro/fluro.dart';
import 'package:openbank/page/login/login.dart';
/**
 * 项目页面
 */
import '../page/login/login.dart';
/*
 测试页面
*/
import '../test-pages/movieScroll/movieScroll.dart';
import '../test-pages//movieDetail/movieDetail.dart';
import '../test-pages/increase/myHomePage.dart';
import '../test-pages/lakes/lakes.dart';


var loginHandle = Handler(
    handlerFunc: (context, Map<String, List<String>> parameters) {
  return Login();
});

var movieScrollHandle = Handler(
    handlerFunc: (context, Map<String, List<String>> parameters) {
  return MoviceScroll();
});

var movieDetailHandle = Handler(
    handlerFunc: (context, Map<String, List<String>> parameters) {
  return MovieDetail();
});
