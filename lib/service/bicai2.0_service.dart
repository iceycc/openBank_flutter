import 'package:flutter/services.dart';
import 'package:openbank/api/api.dart';
import 'package:openbank/utils/http_util.dart';
import 'dart:convert';

typedef OnSuccessList<T>(List<T> banners);

typedef OnSuccess<T>(T banners);
typedef OnFail(String message);

Object initParams(String type,Object params){
  Object params = {
          "head": {
                        "TYPE": type,
                        "TOKEN": "", 
                        "SESSION_ID": "",
                        "DEVICE_ID": "",
                        "CHANNEL": "",
                        "SCREEN_SIZE": "",
                        "SYSTEM_TYPE": "h5",
                        "CHANNEL_ID": "1",
                        "APP_FLAG": "",
                        "USER_CHANNEL": "1", // 新增 USER_CHANNEL
                    },
                    "param": {
                        
                    },
  };
  var str = JsonEncoder(params);
  print(params);
  return params;
  }

class BiCaiApi{
  Future getProdList(data) async {
    try {
      var response = await HttpUtil.instance.post(Api.BICAI_API,parameters:initParams("GET_PRD_INFO",data));
      print(response);
    } catch (e) {
      print(e);
    }
  }
}