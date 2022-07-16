// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import '../UI models/constants.dart';
import 'package:revrocket/pages/home_page.dart';

class Discussion_openpage extends StatelessWidget {
  Discussion_openpage({Key? key, required this.screen}) : super(key: key);

  Size screen;

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
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
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
                    children: const [
                      Text("HI , LOLO"),
                      Icon(Icons.text_rotation_angledown),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: discuss_openscreen(),
    );
  }
}

class discuss_openscreen extends StatelessWidget {
  const discuss_openscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    // final paletSize = size.height * 0.3;
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    // color: Colors.blue,
                    ),
              ),
              VerticalDivider(
                indent: 20,
                endIndent: 20,
                thickness: 0.5,
                color: klines,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(top: 20.0),
                  color: Colors.yellow,
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 30.0),
                        child: SignInButton(Buttons.Apple, onPressed: () {}),
                      ),
                    ],
                  ),
                ),
              ),
              VerticalDivider(
                indent: 20,
                endIndent: 20,
                thickness: 0.5,
                color: klines,
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
