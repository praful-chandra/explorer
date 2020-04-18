import 'package:flutter/material.dart';
import './GridItem.dart';

class MainGrid extends StatelessWidget {
  const MainGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      childAspectRatio: 1),
        delegate: SliverChildBuilderDelegate((context, index) {
          var itm = _items[index];
    return GridItem(
      image: itm["image"],
      title: itm["title"],
      rating:itm["rating"],
    );
        }, childCount: _items.length), 
      );
  }
}



var _items = [
  {
    "title" : "River",
    "image" : "assets/images/river.jpeg",
    "rating" : 4.5
  },
   {
    "title" : "Lake",
    "image" : "assets/images/lake.jpeg",
    "rating" : 3.5
  }, {
    "title" : "Hot Air Baloon",
    "image" : "assets/images/baloon.jpeg",
    "rating" : 2.5
  }, {
    "title" : "road",
    "image" : "assets/images/road.jpeg",
    "rating" : 4.9
  },
    {
    "title" : "River",
    "image" : "assets/images/river.jpeg",
    "rating" : 4.5
  },
   {
    "title" : "Lake",
    "image" : "assets/images/lake.jpeg",
    "rating" : 3.5
  }, {
    "title" : "Hot Air Baloon",
    "image" : "assets/images/baloon.jpeg",
    "rating" : 2.5
  }, {
    "title" : "road",
    "image" : "assets/images/road.jpeg",
    "rating" : 4.9
  },
    {
    "title" : "River",
    "image" : "assets/images/river.jpeg",
    "rating" : 4.5
  },
   {
    "title" : "Lake",
    "image" : "assets/images/lake.jpeg",
    "rating" : 3.5
  }, {
    "title" : "Hot Air Baloon",
    "image" : "assets/images/baloon.jpeg",
    "rating" : 2.5
  }, {
    "title" : "road",
    "image" : "assets/images/road.jpeg",
    "rating" : 4.9
  },
    {
    "title" : "River",
    "image" : "assets/images/river.jpeg",
    "rating" : 4.5
  },
   {
    "title" : "Lake",
    "image" : "assets/images/lake.jpeg",
    "rating" : 3.5
  }, {
    "title" : "Hot Air Baloon",
    "image" : "assets/images/baloon.jpeg",
    "rating" : 2.5
  }, {
    "title" : "road",
    "image" : "assets/images/road.jpeg",
    "rating" : 4.9
  },
    {
    "title" : "River",
    "image" : "assets/images/river.jpeg",
    "rating" : 4.5
  },
   {
    "title" : "Lake",
    "image" : "assets/images/lake.jpeg",
    "rating" : 3.5
  }, {
    "title" : "Hot Air Baloon",
    "image" : "assets/images/baloon.jpeg",
    "rating" : 2.5
  }, {
    "title" : "road",
    "image" : "assets/images/road.jpeg",
    "rating" : 4.9
  }
];

