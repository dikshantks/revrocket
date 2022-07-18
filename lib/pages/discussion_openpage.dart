// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:revrocket/UI%20models/constants.dart';
import 'package:revrocket/components/disucssion_user.dart';
import 'package:revrocket/pages/discussion_forum.dart';

import 'package:revrocket/pages/home_page.dart';
import 'package:revrocket/tests/test_class.dart';

class discuss_openscreen extends StatelessWidget {
  discuss_openscreen({
    Key? key,
    required this.current,
    required this.listAnswer,
  }) : super(key: key);

  DiscusionsList current;

  List<Map<String, dynamic>> listAnswer;

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
                      Text(current.username),
                      Icon(Icons.text_rotation_angledown),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: discuss_mainscreen(
        openedDiscussion: current,
        listAnswer: listAnswer,
      ),
    );
  }
}

class discuss_mainscreen extends StatelessWidget {
  discuss_mainscreen({
    Key? key,
    required this.listAnswer,
    required this.openedDiscussion,
  }) : super(key: key);

  DiscusionsList openedDiscussion;

  List<Map<String, dynamic>> listAnswer;

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
                thickness: 0.5,
                color: klines,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0, bottom: 25.0),
                        child: Text(
                          openedDiscussion.question,
                          style: TextStyle(fontSize: 50.0, color: kprimarytext),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10.0,
                        ),
                        child: discussion_user(
                          name: openedDiscussion.username,
                          time: openedDiscussion.dateAdded,
                          padd_marg: 40.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 10.0, bottom: 25.0, top: 30.0),
                        child: Text(
                          openedDiscussion.description,
                          style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w300,
                              color: kprimarytext),
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '${openedDiscussion.dateAdded} likes',
                                style: GoogleFonts.podkova(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w300,
                                    color: kprimarytext),
                              ),
                              Text(
                                '${listAnswer.length}' ' Answers',
                                style: GoogleFonts.podkova(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w300,
                                    color: kprimarytext),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 0.3,
                        color: klines,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: listAnswer.length,
                        itemBuilder: (context, index) {
                          return AnswerLines(
                            listAnswer: openedDiscussion.listAnswer,
                            index: index,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            height: 40.0,
            width: size.width * 0.6,
            child: TextFormField(
              autocorrect: true,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: ksecondarytext,
                filled: true,
                helperMaxLines: 2,
                hintText: "write your anwer here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AnswerLines extends StatelessWidget {
  AnswerLines({Key? key, required this.listAnswer, required this.index})
      : super(key: key);

  final List<Map<String, dynamic>> listAnswer;

  int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 10.0,
      title: Text(
        listAnswer[index]['answer'],
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w300, color: Colors.white),
      ),
    );
  }
}
