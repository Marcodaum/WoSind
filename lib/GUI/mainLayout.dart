// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainColors.dart';

class mainLayout {
  static BorderRadius borderRadiusAll = BorderRadius.circular(20);
  static BorderRadius borderRadiusTop = const BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  );

  static const TextStyle marketplaceHeadlineStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: mainColors.Text_white,
    fontFamily: 'Montserrat-Light',
  );

  static const TextStyle projectPageTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: mainColors.Text_black,
    fontFamily: 'Montserrat-Medium',
  );

  static const TextStyle projectPageDescriptionHeadline = TextStyle(
    fontSize: 20,
    color: mainColors.Text_black,
  );

  static const TextStyle projectDescription = TextStyle(
    fontSize: 15,
    color: mainColors.Text_description_grey,
    fontFamily: 'Montserrat-Medium',
  );

  static BoxShadow boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3), // changes position of shadow
  );

  Row dividerRow(double thickness) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: Colors.black,
              height: 25,
              thickness: thickness,
            )),
      )
    ]);
  }

  Row textRow_projects(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: mainColors.main_btn,
            ),
          ),
        )
      ],
    );
  }

  Row textRow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: mainColors.tools_description,
            ),
          ),
        )
      ],
    );
  }

  Row infoTextRow(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: mainColors.Text_description_grey,
            ),
          ),
        )
      ],
    );
  }

  Row textRow_tools(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: mainColors.tools_description,
            ),
          ),
        )
      ],
    );
  }

  Row placeholderRow(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: size,
          width: 100,
        ),
      ],
    );
  }

  Row buttonRow(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 75),
          child: TextButton(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: mainColors.Text_black,
              ),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Padding inputField(String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: title,
        ),
      ),
    );
  }

  Padding inputFieldPassword(String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: TextFormField(
        obscureText: true,
        obscuringCharacter: "*",
        controller: controller,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: title,
        ),
      ),
    );
  }

  Padding inputFieldOnlyNumbers(
      String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: title,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
      ),
    );
  }

  Padding inputTextArea(String title, TextEditingController controller) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration:
              InputDecoration(border: UnderlineInputBorder(), labelText: title),
        ));
  }

  Row textRowError(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: mainColors.loginWrongInputErrorText,
            ),
          ),
        )
      ],
    );
  }
}
