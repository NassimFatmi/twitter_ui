import 'package:flutter/material.dart';
import 'package:twitter_ui_project/loading.dart';
import 'package:twitter_ui_project/twitter.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Loading(),
    ),
  );
}
