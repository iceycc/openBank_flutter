import 'package:openbank/api/api.dart';
import 'package:openbank/utils/http_util.dart';

typedef OnSuccessList<T>(List<T> banners);

typedef OnSuccess<T>(T banners);
typedef OnFail(String message);
class BiCaiApi{
  Future getAddressList( OnSuccess onSuccessList,
      {OnFail onFail}) async {
    try {
      var response = await HttpUtil.instance.get(Api.BICAI_API,);
      print(response);
    } catch (e) {
      print(e);
    }
  }
}