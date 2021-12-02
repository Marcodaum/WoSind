// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../main.dart';
import 'imageList.dart';

class ProductPage extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: imageList(),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                  )),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Poolbau",
                          style: TextStyle(color: Colors.black, fontSize: 25.0),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Wie baue ich einen Pool?",
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.",
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      )
                    ]),
              )),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, int) {
                return Card(
                  child: ListTile(
                      title: Text('Anbieter $int'),
                      subtitle: Text('Beschreibung')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
