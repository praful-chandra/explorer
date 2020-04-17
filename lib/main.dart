import 'package:flutter/material.dart';
//import './screens/homepage.dart';
import './screens/splash.dart';

void main()=>runApp(App());


class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title : "explorer",
        home: Splash(),
    );
  }
}