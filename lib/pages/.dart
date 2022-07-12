// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/components/textfor_page1.dart';
import 'package:revrocket/constants.dart';
import 'package:revrocket/components/home_text.dart';
import 'package:revrocket/models/learnpage_ara.dart';
import 'home_page.dart';

class Learnpage extends StatefulWidget {
  const Learnpage({Key? key}) : super(key: key);

  @override
  State<Learnpage> createState() => _LearnpageState();
}

class _LearnpageState extends State<Learnpage> {
  List<GlobalKey> headLineKeyList = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Hometext(
            heading: "learn",
            onpress: () {},
          ),
        ),
      ),
      body: Container(
        color: kprimaryscaffhold,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      writer_deatil(),
                      Headline1(
                        key: headLineKeyList[0],
                        headline1: heading1,
                      ),
                      subheadings(
                        key: headLineKeyList[1],
                        subheading: subheading1,
                      ),
                      Content(
                        content: paragraph1,
                      ),
                      subheadings(subheading: subheding2),
                      Content(
                        content: para2,
                      ),
                      Container(
                        color: Colors.amber,
                        child: IconButton(
                            icon: Icon(Icons.abc_outlined), onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ),
            ),
            VerticalDivider(
              thickness: 3,
              color: klines,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: textsize1),
                // color: Colors.pink,
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        'Table of Content',
                        style: GoogleFonts.poppins(
                            color: kprimarytext, fontSize: 50.0),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Scrollable.ensureVisible(
                            headLineKeyList[0].currentContext!,
                            duration: const Duration(seconds: 1));
                      },
                      title: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "what is stock",
                          style: GoogleFonts.poppins(
                              fontSize: textsize1,
                              fontWeight: FontWeight.w500,
                              color: kprimarytext),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Scrollable.ensureVisible(
                            headLineKeyList[1].currentContext!,
                            duration: const Duration(seconds: 1));
                      },
                      title: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Headline 1",
                          style: GoogleFonts.poppins(
                              fontSize: textsize1,
                              fontWeight: FontWeight.w500,
                              color: kprimarytext),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Scrollable.ensureVisible(
                            headLineKeyList[2].currentContext!,
                            duration: const Duration(seconds: 1));
                      },
                      title: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "understand stock market",
                          style: GoogleFonts.poppins(
                              fontSize: textsize1,
                              fontWeight: FontWeight.w500,
                              color: kprimarytext),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Headline 1",
                          style: GoogleFonts.poppins(
                              fontSize: textsize1,
                              fontWeight: FontWeight.w500,
                              color: kprimarytext),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class writer_deatil extends StatelessWidget {
  const writer_deatil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      // color: Colors.black12,
      width: MediaQuery.of(context).size.width * 0.5,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundColor: klines,
          ),
          SizedBox(
            width: 20.0,
          ),
          VerticalDivider(
            color: klines,
            width: 1,
          ),
          Container(
            height: 100.0,
            alignment: Alignment.topCenter,
            // color: klines,
            margin: EdgeInsets.only(left: 30.0),
            child: Column(
              children: [
                Text(
                  "dikshant sharma",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: ksecondarytext,
                    fontSize: 35.0,
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Text(
                  "name of athour",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: ksecondarytext,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
