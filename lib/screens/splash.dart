import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background-splash.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.darken),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              ..._title //Title Mesage
              ,
              SizedBox(
                height: MediaQuery.of(context).size.height * .5,
              ),
              Expanded(
                child: Container(),
              ),
              _callToActionBtn(context) // bottom call to action button
            ],
          ),
        ),
      ),
    );
  }
}

List<Text> _title = [
  Text(
    "Best \nExperiences".toUpperCase(),
    style: TextStyle(
        fontSize: 39,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2),
  ),
  Text(
    "Immerse yourself with cultures and \nexperiences from across the world.",
    style: TextStyle(
        color: Colors.white, fontSize: 13, letterSpacing: 2, height: 2),
  )
];

Center _callToActionBtn(context) {
  return Center(
    child: InkWell(
      onTap: () => {Navigator.of(context).pushReplacementNamed("/home")},
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 55,
        decoration: BoxDecoration(
            color: Color(0xFFFEC62E), borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            "Start Exploring".toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    ),
  );
}
