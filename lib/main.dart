import 'package:flutter/material.dart';
import 'package:revrocket/pages/home_page.dart';

void main() {
  // Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revenu Rocket',
      home: HomePage(),
    );
  }
}
