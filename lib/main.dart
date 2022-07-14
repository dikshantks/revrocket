import 'package:flutter/material.dart';
import 'package:revrocket/pages/home_page.dart';
import 'package:revrocket/models/themes.dart';

void main() {
  // Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.mythme,
      debugShowCheckedModeBanner: false,
      title: 'Revenu Rocket',
      home: const HomePage(),
    );
  }
}
