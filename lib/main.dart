import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
// import 'widget/myText.dart';
// import 'widget/myImage.dart';
// import 'widget/myContainer.dart';
// import 'page/increase/myHomePage.dart';
// import 'page/lakes/lakes.dart';
// import 'page/login/login.dart';
// import 'page/movieScroll/movieScroll.dart';
import 'package:openbank/routers/routers.dart';
import './page/Initialization_welcome/initialization_welcome_screen.dart';

void main() {
  runApp(new MaterialApp(title: 'my app', home: InitializationWelcome()));
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
