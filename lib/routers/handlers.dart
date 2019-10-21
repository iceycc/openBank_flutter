import '../page/login/login.dart';
import '../page/movieScroll/movieScroll.dart';
import 'package:fluro/fluro.dart';
import 'package:openbank/page/login/login.dart';
import 'package:openbank/page/movieDetail/movieDetail.dart';

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
