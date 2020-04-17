import 'dart:developer';

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var selectedIndex = 0;

  void selectItem(int i) {
    setState(() {
      selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _populateNavTabs(context, selectedIndex, selectItem),
      ),
    );
  }
}

List<Widget> _populateNavTabs(
    BuildContext context, int selectedIndex, Function cb) {
  return [
    InkWell(
      onTap: () => cb(0),
      child: tabChild(context, "Explore", Icons.explore, selectedIndex, 0),
    ),
    InkWell(
      onTap: () => cb(1),
      child: tabChild(context, "Alerts", Icons.notifications, selectedIndex, 1),
    ),
    InkWell(
      onTap: () => cb(2),
      child: tabChild(context, "Liked", Icons.favorite, selectedIndex, 2),
    ),
  ];
}

Widget tabChild(
    BuildContext context, String title, IconData icon, int index, int itemNum) {
  return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      width: index == itemNum
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: index == itemNum ? Color(0xff90C9D4) : Color(0xffacacac),
            size: index == itemNum ? 30 : 20,
          ),
          SizedBox(
            width: 10,
          ),
          index == itemNum
              ? Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff90C9D4),
                    fontWeight: FontWeight.w800,
                    fontSize: 14
                  ),
                )
              : SizedBox()
        ],
      ));
}
