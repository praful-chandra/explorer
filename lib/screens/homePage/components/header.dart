import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10,),
          _title(),
          _heading()
        ],
      ),
    );
  }
}

_title() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Hello, Praful !",
        style: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: Color(0xffACACAC)),
      ),
      CircleAvatar(
        backgroundImage: AssetImage("assets/images/avatar.jpg"),
        radius: 21,
      ),
    ],
  );
}

_heading(){
  return Text(
            "WHAT DO\nYOU WANT TO\nEXPERIENCE TODAY?",
            style: TextStyle(
              fontFamily: "Girassol",
              fontSize: 30,
              height: 1.7,
              wordSpacing: 4,
            ),
          );
}