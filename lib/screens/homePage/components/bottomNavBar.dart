import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedIndex = 0;

  final tabs = [
    {"icon": Icons.explore, "title": "Explore"},
    {"icon": Icons.notifications, "title": "Alerts"},
    {"icon": Icons.favorite, "title": "Likes"}
  ];

  void switchTab(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60), topRight: Radius.circular(60)),
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabs.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => switchTab(index),
              child: index == _selectedIndex
                  ? selectedTab(tabs[index]["title"], tabs[index]["icon"], size)
                  : notSelectedTab(tabs[index]["icon"], size),
            );
          }),
    );
  }
}

Widget selectedTab(String title, IconData icon, Size size) {
  return Container(
    width: size.width * 0.4,
    margin: EdgeInsets.only(left: 10),
    child: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xff90C9D4),
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(color: Color(0xff90C9D4), fontSize: 16),
        )
      ],
    ),
  );
}

Widget notSelectedTab(IconData icon, Size size) {
  return Container(
    width: size.width * 0.1,
    margin: EdgeInsets.all(10),
    child: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xffACACAC),
        ),
      ],
    ),
  );
}
