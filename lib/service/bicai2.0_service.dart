import 'dart:convert';
import 'package:openbank/api/api.dart';
import 'package:openbank/utils/http_util.dart';
import 'package:dio/dio.dart';

typedef OnSuccessList<T>(List<T> banners);

typedef OnSuccess<T>(T banners);
typedef OnFail(String message);

Object initParams(String type, Map<String, String> data) {
  var params = {
    "head": {
      "TYPE": type,
      "TOKEN": "",
      "SESSION_ID": "",
      "DEVICE_ID": "",
      "CHANNEL": "",
      "SCREEN_SIZE": "",
      "SYSTEM_TYPE": "h5",
      "CHANNEL_ID": "9",
      "APP_FLAG": "BC",
      "USER_CHANNEL": "1", // 新增 USER_CHANNEL
    },
  };
  params["param"] = data;
  var str = json.encode(params);
  //  var str = params.toString();
  print(params);
  return 'param_key=' + str;
}

Options options = Options(contentType: "application/x-www-form-urlencoded");

class BiCaiApi {
  // 获取首页产品列表
  Future getProdList(Map<String, String> parameters,
      {OnSuccess onSuccess, OnFail onFail}) async {
    try {
      var response = await HttpUtil.instance.post(Api.YIYE_BC_API,
          parameters: initParams('GENERALIZE_INFO_H5_V2', parameters),
          options: options);
      print(response);
    } catch (e) {
      print(e);
    }
  }
  // 发送短信验证码
  Future doLogin(Map<String, String> parameters,
      {OnSuccess onSuccess, OnFail onFail}) async {
    try {
      var response = await HttpUtil.instance.post(Api.YIYE_BC_API,
          parameters: initParams('REQ_NO_VALIDATE', parameters),
          options: options);
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
