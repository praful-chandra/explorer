import 'package:flutter/material.dart';
import './components/header.dart';
import './components/tabs.dart';
import './components/bottomNavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Color(0xfff2f2f2),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Header(),
            Tabs(),

          ],
        ),
      ),
    );
  }
}
