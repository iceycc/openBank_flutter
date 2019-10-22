import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:openbank/routers/routers.dart';
import './page/Initialization_welcome/initialization_welcome_screen.dart';



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
