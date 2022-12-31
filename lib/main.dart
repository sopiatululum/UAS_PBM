import 'package:juice/mydesain.dart';
import 'package:juice/detailjus.dart';
import 'package:flutter/material.dart';
import 'package:juice/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
