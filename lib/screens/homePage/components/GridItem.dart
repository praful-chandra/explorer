import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String image;
  final String title;
  final num rating;

  GridItem({
  @required  this.image,
  @required  this.rating,
  @required  this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.darken),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Container()),
          Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                width: 60,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[Icon(Icons.star), Text(rating.toString())],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
