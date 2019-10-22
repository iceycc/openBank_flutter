import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'widget/myText.dart';
import 'widget/myImage.dart';
import 'widget/myContainer.dart';
import 'page/login/login.dart';
import 'package:openbank/routers/routers.dart';

import 'test-pages/movieScroll/movieScroll.dart';
import 'test-pages/lakes/lakes.dart';
import 'test-pages/increase/myHomePage.dart';


void main(){
  
  runApp(new MaterialApp(title: 'my app',
  // home:MyText()
  // home:Login()
  // home:Login()
  // home:MoviceScroll()
  home:MainApp()
  ));
}


class Application {
  static Router router;
}

class MainApp extends StatelessWidget {
  MainApp() {
    final router = Router();
    Routers.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,

      ),
    );
  }
}
