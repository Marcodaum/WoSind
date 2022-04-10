import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wo_sind_app/GUI/mainLayout.dart';
import 'package:wo_sind_app/database/profile.dart';
import '../main.dart';
import 'mainColors.dart';

class marketplaceLayout {
  /*Row recommendedRow(BuildContext context, String image, String title,
      String location, String price, String author) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Screen2()));
        },
        style: TextButton.styleFrom(primary: mainColors.selector_light_green),
        child: Container(
          width: 325,
          height: 183,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: mainColors.Button_unselected,
          ),
          margin: const EdgeInsets.only(top: 10, right: 0, bottom: 0, left: 0),
          padding: const EdgeInsets.only(top: 0, right: 0, bottom: 0, left: 0),
          child: Stack(children: [
            Align(
                alignment: Alignment.center,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                        decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill),
                    )))),
            Positioned(
                // The Positioned widget is used to position the text inside the Stack widget
                top: 0,
                right: 0,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    child: Container(
                        // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                        width: 325,
                        height: 30,
                        color: mainColors.background.withOpacity(0.75),
                        margin: const EdgeInsets.only(bottom: 0),
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(title + " - " + author,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: mainColors.tools_description,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )))),
            Positioned(
                // The Positioned widget is used to position the text inside the Stack widget
                bottom: 0,
                right: 0,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Container(
                        // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                        width: 325,
                        height: 30,
                        color: mainColors.background.withOpacity(0.75),
                        margin: const EdgeInsets.only(bottom: 0),
                        padding: const EdgeInsets.all(0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(location + " - " + price + "€",
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: mainColors.tools_description,
                                      fontWeight: FontWeight.bold)),
                            ]))))
          ]),
        ),
      )
    ]);
  }*/

  Column recommendedRow(BuildContext context, String image, String title,
      String location, String price, Profile author) {
    return Column(
      children: [
        mainLayout().placeholderRow(20),
        textRowTop(title + " - " + price + "€"),
        Align(
            alignment: Alignment.center,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Container(
                    width: 325,
                    height: 183,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill),
                    )))),
        textRowBottom(location + " - " + author.getName())
      ],
    );
  }

  Row textRowTop(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 325,
            height: 30,
            decoration: new BoxDecoration(
              color: mainColors.Text_black.withOpacity(0.75),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: mainColors.Text_white,
                ),
              ),
            ))
      ],
    );
  }

  Row textRowBottom(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 325,
            height: 30,
            decoration: new BoxDecoration(
              color: mainColors.Text_black.withOpacity(0.75),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: mainColors.Text_white,
                ),
              ),
            ))
      ],
    );
  }
}
