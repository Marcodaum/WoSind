// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../GUI/mainLayout.dart';

ListView settingsContent(BuildContext context) {
  return ListView(children: content());
}

List<Row> content() {
  List<Row> rows = <Row>[];
  rows.add(mainLayout().placeholderRow(20));
  rows.add(mainLayout().textRow("Einstellungen"));
  rows.add(mainLayout().placeholderRow(20));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Privater Account"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Mitteilungen"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Events vergeben"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Kontoeinstellungen"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Hilfe-Center"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Version"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Datenschutz"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Nutzungsbedingungen"));

  rows.add(mainLayout().dividerRow(0.25));
  rows.add(mainLayout().buttonRow("Cookie-Richtlinien"));
  return rows;
}
