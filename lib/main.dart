import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:revrocket/UI%20models/themes.dart';

import 'package:revrocket/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
