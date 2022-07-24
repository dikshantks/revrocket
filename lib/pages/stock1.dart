// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/components/textfor_page1.dart';
import '../UI models/constants.dart';
import 'package:revrocket/components/learnpage_ara.dart';
import 'package:revrocket/pages/stock2.dart';
import '../components/writer_detail.dart';
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
    GlobalKey(),
    GlobalKey(),
  ];
  //     List.filled(
  //   subheading_ar,r.length,
  //   GlobalKey(),
  // );
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
            Navigator.pop(
              context,
            );
          },
        ),
      ),
      body: stock_learn1(
          scrollController: _scrollController,
          headLineKeyList: headLineKeyList),
    );
  }
}

class stock_learn1 extends StatelessWidget {
  const stock_learn1({
    Key? key,
    required ScrollController scrollController,
    required this.headLineKeyList,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List<GlobalKey<State<StatefulWidget>>> headLineKeyList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kprimaryscaffhold,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              // alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    child: FittedBox(
                      child: Text(
                        'Table of content',
                        style: GoogleFonts.lato(
                            color: kprimarytext, fontSize: 40.0),
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: Subheading_arr.length,
                    itemBuilder: (context, index) {
                      return subheading_tile(
                        index: index,
                        subheading: Subheading_arr[index],
                        headLineKeyList: headLineKeyList,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          VerticalDivider(
            thickness: 0.7,
            color: klines,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                // top: 50.0,
                left: 30.0,
                right: 70.0,
                bottom: 20.0,
              ),
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    writer_deatil(),
                    Headline1(
                      headline1: heading1,
                    ),
                    subheadings(
                      key: headLineKeyList[0],
                      subheading: Subheading_arr[0],
                    ),
                    Content(
                      content: paragraph1,
                    ),
                    subheadings(
                        key: headLineKeyList[1], subheading: Subheading_arr[1]),
                    Content(
                      content: para2,
                    ),
                    subheadings(
                        key: headLineKeyList[2], subheading: Subheading_arr[2]),
                    Content(
                      content: para2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class subheading_tile extends StatelessWidget {
  const subheading_tile(
      {Key? key,
      required this.headLineKeyList,
      required this.subheading,
      required this.index})
      : super(key: key);

  final List<GlobalKey<State<StatefulWidget>>> headLineKeyList;

  final subheading;

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scrollable.ensureVisible(headLineKeyList[index].currentContext!,
            duration: const Duration(seconds: 1));
      },
      child: Container(
        color: kErrorColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          subheading,
          style: GoogleFonts.lato(fontSize: 25.0, color: kprimarytext),
        ),
      ),
    );
  }
}
