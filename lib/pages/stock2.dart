// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/components/textfor_page1.dart';
import 'package:revrocket/models/constants.dart';
import 'package:revrocket/components/home_text.dart';
import 'package:revrocket/components/learnpage_ara.dart';
import '../components/writer_detail.dart';
import 'home_page.dart';

class Learnpage2 extends StatefulWidget {
  const Learnpage2({Key? key}) : super(key: key);

  @override
  State<Learnpage2> createState() => _Learnpage2State();
}

class _Learnpage2State extends State<Learnpage2> {
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
                      // key: headLineKeyList[0],
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
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1),
              // color: Colors.pink,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Table of mee',
                      style: GoogleFonts.poppins(
                          color: kprimarytext, fontSize: 40.0),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: Subheading_arr.length,
                      itemBuilder: (context, index) {
                        return subheading_tile(
                            index: index,
                            subheading: Subheading_arr[index],
                            headLineKeyList: headLineKeyList);
                      })
                ],
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
    return ListTile(
      onTap: () {
        Scrollable.ensureVisible(headLineKeyList[index].currentContext!,
            duration: const Duration(seconds: 1));
      },
      title: Container(
        margin: EdgeInsets.all(10),
        child: Text(
          subheading,
          style: GoogleFonts.poppins(
              fontSize: 1, fontWeight: FontWeight.w500, color: kprimarytext),
        ),
      ),
    );
  }
}
