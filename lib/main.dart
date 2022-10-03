// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:voxxon/intro_screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Voxxon',
      theme: ThemeData(),
      home: const Welcome(title: 'Voxxon'),
      debugShowCheckedModeBanner: false,
    );
    return materialApp;
  }
}
