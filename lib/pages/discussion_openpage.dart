// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:revrocket/UI%20models/constants.dart';
import 'package:revrocket/components/affter_login.dart';
import 'package:revrocket/pages/discussion_forum.dart';
import 'package:revrocket/pages/home_page.dart';
import 'package:revrocket/tests/test_class.dart';

class discuss_openscreen extends StatelessWidget {
  discuss_openscreen({
    Key? key,
  }) : super(key: key);

  // String question;

  // List<Map<String, dynamic>> listAnswer;

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    final Curentform =
        ModalRoute.of(context)!.settings.arguments as DiscusionsList;

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
                      Text('hi , ${Curentform.username}'),
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
        question: "",
        listAnswer: [],
      ),
    );
  }
}

class discuss_mainscreen extends StatelessWidget {
  discuss_mainscreen({
    Key? key,
    this.question,
    required this.listAnswer,
  }) : super(key: key);

  String? question = "";

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
                indent: 20,
                endIndent: 20,
                thickness: 0.5,
                color: klines,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Text(
                        question!,
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: listAnswer.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                listAnswer[index]['answer'],
                                style: TextStyle(
                                    fontSize: 40.0, color: Colors.white),
                              ),
                            );
                          })
                    ],
                  ),
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
