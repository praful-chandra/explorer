import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/homePage/homepage.dart';
import './screens/splash.dart';

void main() {
  runApp(App());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "explorer",
      initialRoute: "/splash",
      routes: {"/splash": (ctx) => Splash(), "/home": (ctx) => HomePage()},
    );
  }
}

