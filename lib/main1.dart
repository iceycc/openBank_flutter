// import 'package:flutter/material.dart';
// import 'package:openbank/page/testpage/testpage.dart';
printNumber(String name, num aNumber, Object obj) {
  assert(1 == 1);
  print('$name is $aNumber 岁 $obj $obj');
}

class Api {
  num version = 1;
  fetch(method) {
    print('method方式为：$method');
  }

  get() {
    fetch('get');
  }

  post() {
    fetch('post');
  }
}

var api = new Api();
void main() {
  // runApp(new MaterialApp(
  //   title: 'Shopping App',
  //   home: new ShoppingList(
  //     products: <Product>[
  //       new Product(name: 'Eggs'),
  //       new Product(name: 'Flour'),
  //       new Product(name: 'Chocolate chips'),
  //       new Product(name: 'four'),
  //     ],
  //   ),
  // ));

  var age = 24;
  String name = "王冰洋";
  const base = 'baidu.com';
  final baseApi = base + '/api';
  String loginApi = baseApi + '/login';
  int lineCount;
  assert(lineCount == null);
  Object obj = {"a": 1, "b": 2, "loginApi": loginApi};
  var one = int.parse('1');
  assert(one == 1);
  api.get();
  api.post();
  printNumber(name, age, obj);
  var onePointOne = double.parse('1.2');
  assert(onePointOne == 1.2);
  const pai = 3.14;
  const dPai = pai * 2;
  print(r'xxxxx $dPai \n' "dadada");
  print('xxxxx $dPai \n' "dadada");

  var aNum = 0;
  bool aBool = true;
  var aString = 'a string';
  const aConstList = const [1, 2, 3];
  print(aConstList);
  if (aBool) {
    print(aBool);
  }
  // if(aNum){ 非法
  //   print(aNum);
  // }
  // if(aString){

  // };

  var constantList1 = const [1, 2, 3]; //不变的
  var constantList2 = [1, 2, 3];
  var list3 = new List<int>();
  constantList2.add(4);
  print(constantList2);
  list3.addAll([1, 3, 4, 5]);
  print(list3);
  var a = null;
  // assert(false == null);
  if (a == null) {
    print(11);
  }

  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));

  var _nobleGases = [null, 1, 2];

  bool isNoble(int atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }

  print(isNoble(0));
  String say(String from, String msg, [String device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

  print(say('我的', '你的'));

  /// Sets the [bold] and [hidden] flags to the values you
  /// specify, defaulting to false.
  void enableFlags({bool bold = false, bool hidden = false}) {
    // ...
  }
  void enableFlags2(bool bold, [bool hidden]) {
    // ...
  }
  enableFlags2(true);
  // bold will be true; hidden will be false.
  enableFlags(bold: true);

  String say2(String from, String msg,
      [String device = 'carrier pigeon', String mood]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    if (mood != null) {
      result = '$result (in a $mood mood)';
    }
    return result;
  }

  assert(say2('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

  Map<String, String> gifts = const {
    'first': 'papper',
    'second': 'contton',
    'third': 'leather'
  };
  print(gifts);
  // querySelector("#sample_text_id")
  //   ..text = "Click me!"
  //   ..onClick.listen(reverseText);

  printElement(element) {
    print(element);
  }

  var list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(printElement);
  list.forEach((item) => print(item));
  list.forEach((item) {
    print(item);
  });

  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an integer
  assert(5 % 2 == 1); // Remainder

  print('5/2 = ${5 ~/ 2} r ${5 % 2}'); // 5/2 = 2 r 1
  var api2 = new Api();
  // var api3 ;
  // (api3 as Api).post(); 模拟
  if (api2 is Api) {
    print('api2 is Api');
  }
  // (api2 as Api).version =2;
  if (!(api2 is! Api)) {
    print('api2 is Api');
  }
  var value = null;
  var b = '1';
  a = value; // 给 a 变量赋值
  b ??= value; // 如果 b 是 null，则赋值给 b；
  // 如果不是 null，则 b 的值保持不变

  fnC(){
    return {
      "text":'aaa',
      "fnClick":(name)=>{print('fnClick $name')}
    };
    fnC()
    ..text='ccc'
    ..fnClick('name');
  }
}
// void main(List<String> arguments) {
//   print(arguments);

//   assert(arguments.length == 2);
//   assert(int.parse(arguments[0]) == 1);
//   assert(arguments[1] == 'test');
// }
