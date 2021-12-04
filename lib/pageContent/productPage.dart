// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../main.dart';
import '../GUI/mainColors.dart';
import '../GUI/mainLayout.dart';
import '../InstructionClasses/Instruction.dart';

class ProductPage extends State<Screen2> with Instruction {
  ProductPage(List<String> images, String title, String subtitle, String date,
      String description, List<String> detail_images) {
    this.images = images;
    this.subtitle = subtitle;
    this.title = title;
    this.date = date;
    this.description = description;
    this.detail_images = detail_images;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: AspectRatio(
                          aspectRatio: 16 / 15,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset(images.last),
                          ),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: AspectRatio(
                            aspectRatio: 16 / 15,
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                images.first,
                              ),
                            ),
                          ))
                    ],
                  )),
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 220, 0, 0),
                  child: Stack(
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Stack(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: mainColors.background,
                                        borderRadius:
                                            mainLayout.borderRadiusTop),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 40, 0, 0),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                title,
                                                style: mainLayout
                                                    .projectPageHedlines,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 7, 0, 0),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                subtitle,
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: mainColors
                                                      .Text_description_grey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 30, 0, 0),
                                        child: Column(
                                          children: const [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Datum",
                                                  style: mainLayout
                                                      .projectPageHedlines,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 30, 0, 0),
                                        child: Column(
                                          children: const [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Beschreibung",
                                                  style: mainLayout
                                                      .projectPageHedlines),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 7, 40, 40),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                description,
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: mainColors
                                                      .Text_description_grey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 7, 40, 40),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                mainLayout.borderRadiusAll,
                                          ),
                                          height: 300,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              children: <Widget>[
                                                Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            80,
                                                    decoration: BoxDecoration(
                                                        color: mainColors
                                                            .background,
                                                        borderRadius: mainLayout
                                                            .borderRadiusAll),
                                                    child: AspectRatio(
                                                        aspectRatio: 16 / 9,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: FittedBox(
                                                              fit: BoxFit.fill,
                                                              child:
                                                                  Image.asset(
                                                                detail_images[
                                                                    0],
                                                              ),
                                                            )))),
                                                Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            80,
                                                    decoration: BoxDecoration(
                                                        color: mainColors
                                                            .background,
                                                        borderRadius: mainLayout
                                                            .borderRadiusAll),
                                                    child: AspectRatio(
                                                        aspectRatio: 16 / 9,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: FittedBox(
                                                              fit: BoxFit.fill,
                                                              child:
                                                                  Image.asset(
                                                                detail_images[
                                                                    1],
                                                              ),
                                                            )))),
                                                Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            80,
                                                    decoration: BoxDecoration(
                                                        color: mainColors
                                                            .background,
                                                        borderRadius: mainLayout
                                                            .borderRadiusAll),
                                                    child: AspectRatio(
                                                        aspectRatio: 16 / 9,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: FittedBox(
                                                              fit: BoxFit.fill,
                                                              child:
                                                                  Image.asset(
                                                                detail_images[
                                                                    2],
                                                              ),
                                                            )))),
                                              ]),
                                        ),
                                      )
                                    ]),
                                  )),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Icon(Icons.thumb_up),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      const CircleBorder()),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(10)),
                                  backgroundColor: MaterialStateProperty.all(
                                      mainColors.heart_btn), // <-- Button color
                                ),
                              ))),
                    ],
                  ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    mainLayout.boxShadow,
                  ],
                  shape: BoxShape.circle,
                  color: mainColors.main_btn,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: mainColors.background,
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }
}
