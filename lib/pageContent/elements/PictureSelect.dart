// ignore_for_file: avoid_unnecessary_containers, unnecessary_this, non_constant_identifier_names, unused_import, file_names

import 'package:flutter/material.dart';
import '../../GUI/mainColors.dart';
import '../../GUI/mainLayout.dart';
import '../../InstructionClasses/Instruction.dart';

class PictureSelect {
  List detail_images = [""];
  PictureSelect(List imgs) {
    this.detail_images = imgs;
  }

  Widget scrollBar(BuildContext context, int index) {
    if (index < detail_images.length - 1) {
      return Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: FittedBox(
                      fit: BoxFit.cover,
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
          aspectRatio: 16 / 9,
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
