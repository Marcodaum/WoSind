// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../main.dart';
import '../GUI/mainColors.dart';
import '../GUI/mainLayout.dart';
import '../InstructionClasses/Instruction.dart';
import 'elements/PictureSelect.dart';
import 'elements/detailedImages.dart';

class ProductPage extends State<Screen2>
    with Instruction, TickerProviderStateMixin {
  ProductPage(List<String> images, String title, String subtitle, String date,
      String description, List<String> detail_images) {
    this.images = images;
    this.subtitle = subtitle;
    this.title = title;
    this.date = date;
    this.description = description;
    this.detail_images = detail_images;
  }
  List<bool> isSelected = [true, true, true, true];
  static final _containerHeight = 200.0;

  // You don't need to change any of these variables
  var _controller = ScrollController();
  bool reversed = true;
  bool opacity = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_listener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // entire logic is inside this listener for ListView
  void _listener() {
    var direction = _controller.position.userScrollDirection;

    if (direction == ScrollDirection.reverse) {
      if (reversed) {
        setState(() {
          opacity = false;
        });
        reversed = !reversed;
      }
    } else if (direction == ScrollDirection.forward) {
      if (!reversed) {
        setState(() {
          opacity = true;
        });
        reversed = !reversed;
      }
    }
    // for simplicity I'm calling setState here, you can put bool values to only call setState when there is a genuine change in _fromTop
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
          ListView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
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
                                                  alignment:
                                                      Alignment.centerLeft,
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
                                              children: List.generate(
                                                  detail_images.length,
                                                  (index) => detailedImages(
                                                          detail_images)
                                                      .scrollBar(
                                                          context, index)),
                                            ),
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
                                        mainColors
                                            .heart_btn), // <-- Button color
                                  ),
                                ))),
                      ],
                    ))
              ]),
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
          IgnorePointer(
              ignoring: !opacity,
              child: AnimatedOpacity(
                opacity: opacity ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: mainLayout.borderRadiusTop,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(1),
                                spreadRadius: 40,
                                blurRadius: 70,
                                offset: const Offset(
                                    3, 0), // changes position of shadow
                              )
                            ],
                            shape: BoxShape.rectangle,
                            color: mainColors.background,
                          ),
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 14,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      children: List.generate(
                                          detail_images.length,
                                          (index) =>
                                              PictureSelect(detail_images)
                                                  .scrollBar(context, index)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Stack(
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: ConstrainedBox(
                                                constraints:
                                                    BoxConstraints.tightFor(
                                                  width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2 -
                                                      30,
                                                  height: 60,
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(mainColors
                                                                  .main_btn),
                                                      shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                      ))),
                                                  child: const Text(
                                                    "alle leihen",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: ConstrainedBox(
                                                constraints:
                                                    BoxConstraints.tightFor(
                                                  width: MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          2 -
                                                      30,
                                                  height: 60,
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(mainColors
                                                                  .main_btn),
                                                      shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                      ))),
                                                  child: const Text(
                                                    "auswahl leihen",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ))),
                                      ],
                                    ),
                                  )
                                ],
                              )))),
                ),
              )),
        ],
      ),
    );
  }
}
