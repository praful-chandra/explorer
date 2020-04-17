import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  var _selectedIndex = 0;
  List<String> tabs = ["Top", "ForYou", "Hidden Gems"];

  void selectTab(num i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _populateTabs(tabs, _selectedIndex, selectTab)),
    );
  }
}

_populateTabs(List<String> tabs, int selectedIndex, Function cb) {
  List<Widget> tabList = [];

  for (int i = 0; i < tabs.length; i++) {
    tabList.add(
      GestureDetector(
        onTap: () => cb(i),
        child: Text(
          tabs[i],
          style: TextStyle(
              color: selectedIndex == i ? Color(0xff90C9D4) : Color(0xffACACAC),
              fontSize: 17,
              fontWeight:
                  selectedIndex == i ? FontWeight.w700 : FontWeight.w400),
        ),
      ),
    );
  }

  return tabList;
}
