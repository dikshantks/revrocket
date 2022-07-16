// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/UI%20models/constants.dart';
import 'package:revrocket/pages/discussion_forum.dart';

import 'package:revrocket/pages/discussion_openpage.dart';
import 'package:revrocket/pages/home_page.dart';

class discuss_openscreen extends StatelessWidget {
  discuss_openscreen({
    Key? key,
  }) : super(key: key);

//  Size screen = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 2.0,
        leadingWidth: 100.0,
        leading: Reuselogo(onpress: () {
          Navigator.pop(context);
        }),
        title: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  color: Colors.amber,
                )),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text("HI , USER"),
                      Icon(Icons.text_rotation_angledown),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: discuss_mainscreen(),
    );
  }
}

class discuss_mainscreen extends StatelessWidget {
  const discuss_mainscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final paletSize = size.height * 0.3;
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              comingSoonScreen(paletSize: paletSize),
              VerticalDivider(
                indent: 20,
                endIndent: 20,
                thickness: 0.5,
                color: klines,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(top: 20.0),
                  // color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 50.0,
        ),
      ],
    );
  }
}
