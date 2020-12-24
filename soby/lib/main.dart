import 'package:flutter/material.dart';
import 'package:soby/pages/home.dart';
import 'package:soby/pages/loading.dart';
import 'package:soby/pages/achievements.dart';
import 'package:soby/pages/start.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => Start(),
    '/home': (context) => Home(),
    '/loading': (context) => Loading(),
    '/achievements': (context) => Achieved(),
  }));
}
