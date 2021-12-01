// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../main.dart';

class ProductPage extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produktseite"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
              'Hammer',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => Card(
                child: Center(
                    child: Text(
                        '                                              Picture                                                  ')),
              ),
            ),
          ),
          Text(
            'Anbieter',
            style: TextStyle(fontSize: 18),
          ),
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
