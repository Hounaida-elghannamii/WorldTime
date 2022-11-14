import 'package:ex3/loading.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'loading.dart';
import 'chosse.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/chosse': (context) => Chosse(),
    },
  ));
}
