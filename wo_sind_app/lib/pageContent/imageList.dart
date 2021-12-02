import 'package:flutter/material.dart';

class imageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            height: 100,
            width: 100,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              "assets/Download.jpeg",
            )))),
        Container(
            width: 100.0,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              "assets/unnamed.jpeg",
            )))),
        Container(
            width: 600,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              "assets/Pool_2-1024x683.jpeg",
            )))),
      ],
    ); /*

    Container(
        width: 1000.0,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          "assets/Download.jpeg",
        ))));*/
  }
}
