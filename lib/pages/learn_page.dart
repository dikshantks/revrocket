// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:revrocket/clors.dart';
import 'package:revrocket/components/home_text.dart';

import 'home_page.dart';

class Learnpage extends StatefulWidget {
  const Learnpage({Key? key}) : super(key: key);

  @override
  State<Learnpage> createState() => _LearnpageState();
}

class _LearnpageState extends State<Learnpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: kprimaryscaffhold,
        leadingWidth: 100.0,
        leading: Reuselogo(
          onpress: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          // color: Colors.amber,
          child: Hometext(
            heading: "learn",
            onpress: () {},
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
