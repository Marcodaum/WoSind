// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../main.dart';
import '../GUI/mainColors.dart';

class ProductPage extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16 / 15,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset('assets/unnamed.jpeg'),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: mainColors.main_btn,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: mainColors.background,
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 270, 0, 0),
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: mainColors.background,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Poolbau",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: mainColors.Text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 7, 0, 0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Schwierigkeitsgrad: mittel",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: mainColors.Text_description,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Datum",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: mainColors.Text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Beschreibung",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: mainColors.Text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 7, 40, 40),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: mainColors.Text_description,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )),
              ],
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(280, 270, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: mainColors.background,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.thumb_up,
                  size: 20,
                  color: mainColors.heart_btn,
                ),
                onPressed: () {},
              ),
            )),
      ],
    )));
  }
}
