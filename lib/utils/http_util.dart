import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../components/Loading/loading_screen_utils.dart';
var dio;
class HttpUtil {
  // 工厂模式
  static HttpUtil get instance => _getInstance();
  
  static HttpUtil _httpUtil;
  
  static BuildContext context;

  static HttpUtil _getInstance() {
    if (_httpUtil == null) {
      _httpUtil = HttpUtil(context);
    }
    return _httpUtil;
  }

  HttpUtil(context) {
    BaseOptions options = BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 5000,
    );
    dio = new Dio(options);
    LoadingPage loadingPage = LoadingPage(context);
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      
      print("========================请求数据===================");
      loadingPage.show();
      print("url=${options.uri.toString()}");
      print("params=${options.data}");
      dio.lock();
    //  await SharedPreferencesUtils.getToken().then((token) {
    //     options.headers[Strings.TOKEN] = token;
    //   });
      dio.unlock();
      return options;
    }, onResponse: (Response response) {
       loadingPage.close();
      print("========================请求数据===================");
      print("code=${response.statusCode}");
      print("response=${response.data}");
    }, onError: (DioError error) {
       loadingPage.close();
      print("========================请求错误===================");
      print("message =${error.message}");
    }));
  }

  Future get(String url,
      {Map<String, dynamic> parameters, Options options}) async {
    Response response;
    if (parameters != null && options != null) {
      response =
          await dio.get(url, queryParameters: parameters, options: options);
    } else if (parameters != null && options == null) {
      response = await dio.get(url, queryParameters: parameters);
    } else if (parameters == null && options != null) {
      response = await dio.get(url, options: options);
    } else {
      response = await dio.get(url);
    }
    return response.data;
  }

  Future post(String url,
      {Map<String, dynamic> parameters, Options options}) async {
    Response response;
    if (parameters != null && options != null) {
      response = await dio.post(url, data: parameters, options: options);
    } else if (parameters != null && options == null) {
      response = await dio.post(url, data: parameters);
    } else if (parameters == null && options != null) {
      response = await dio.post(url, options: options);
    } else {
      response = await dio.post(url);
    }
    return response.data;
  }
}
