// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mymoney/view/loading.dart';
import 'package:mymoney/view/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home()
    },
  ));
}
