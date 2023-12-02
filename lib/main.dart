// ignore_for_file: prefer_const_constructors

import 'package:asevestipos/components/sideabar.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),

        // home: HomePage(),
        theme: ThemeData(primarySwatch: Colors.brown),
      ),
    );
  }
}
