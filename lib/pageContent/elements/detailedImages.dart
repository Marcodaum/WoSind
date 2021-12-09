// ignore_for_file: avoid_unnecessary_containers, unnecessary_this, non_constant_identifier_names, unused_import, file_names, camel_case_types

import 'package:flutter/material.dart';
import '../../GUI/mainColors.dart';
import '../../GUI/mainLayout.dart';
import '../../InstructionClasses/Instruction.dart';

class detailedImages {
  List detail_images = [""];
  detailedImages(List imgs) {
    this.detail_images = imgs;
  }

  Widget scrollBar(BuildContext context, int index) {
    if (index < detail_images.length) {
      return Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset(
                        this.detail_images[index],
                      ),
                    ))),
          ),
          const SizedBox(width: 15) // give it width
        ],
      );
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: AspectRatio(
          aspectRatio: 16 / 11,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  this.detail_images[index],
                ),
              ))),
    );
  }
}
