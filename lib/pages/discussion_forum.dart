// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/components/home_text.dart';
import 'package:revrocket/models/constants.dart';
import 'package:revrocket/components/disucssion_user.dart';
import 'package:revrocket/pages/home_page.dart';

class Discussion_page extends StatelessWidget {
  Discussion_page({Key? key, required this.screen}) : super(key: key);

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
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
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
                  // color: Colors.yellow,
                  child: ListView(
                    children: [
                      discussion_bubble(palet_size: paletSize),
                      discussion_bubble(palet_size: paletSize),
                      discussion_bubble(palet_size: paletSize),
                      discussion_bubble(palet_size: paletSize),
                      discussion_bubble(palet_size: paletSize),
                      discussion_bubble(palet_size: paletSize),
                      discussion_bubble(palet_size: paletSize),
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
              Expanded(
                flex: 1,
                child: Container(
                    // color: Colors.blue,
                    ),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 50.0,
        ),
      ],
    );
  }
}

class discussion_bubble extends StatelessWidget {
  const discussion_bubble({
    Key? key,
    required this.palet_size,
  }) : super(key: key);

  final double palet_size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("c");
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        decoration: BoxDecoration(
          color: kdiscussionpage,
          borderRadius: BorderRadius.circular(35.0),
          boxShadow: [BoxShadow(blurRadius: 10.0)],
        ),
        height: palet_size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                color: kprimaryscaffhold,
                child: discussion_user(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                // color: kErrorColor,
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        "nagdfgdfgdgfsdfsdme",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: ksecondarytext,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "fsdjfek;kljdflk;fje;lfkej;lsdjfe;jl;srjf;jxl;kjefroerjfldkjerlfkej",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          color: ksecondarytext,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                // color: ksecondarytext,
              ),
            )
          ],
        ),
      ),
    );
  }
}
