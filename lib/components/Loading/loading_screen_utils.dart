import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage {
  final BuildContext _context;

  LoadingPage(this._context);

  ///打开loading
  void show({Function onClosed}) {
    showDialog(
      context: _context,
      builder: (context) {
        return SpinKitRipple(
          color: Colors.white,
        );
        // return SpinKitRing{
        //    color: Colors.white,
        //   lineWidth: 3.0,
        // }
      },
    );
    // .then((value) {
    //   onClosed(value);
    // });
  }

  ///关闭loading
  void close() {
    Navigator.of(_context).pop();
  }
}