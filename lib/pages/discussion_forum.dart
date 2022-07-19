// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:revrocket/UI%20models/constants.dart';
import 'package:revrocket/components/after_Login.dart';
import 'package:revrocket/components/disucssion_user.dart';
import 'package:revrocket/models/firebaseAuthFile.dart';
import 'package:revrocket/models/firebaseDiscussionList.dart';
import 'package:revrocket/pages/discussion_openpage.dart';
import 'package:revrocket/pages/home_page.dart';
import 'package:revrocket/tests/test_class.dart';

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

class discuss_mainscreen extends StatefulWidget {
  const discuss_mainscreen({
    Key? key,
  }) : super(key: key);

  @override
  State<discuss_mainscreen> createState() => _discuss_mainscreenState();
}

class _discuss_mainscreenState extends State<discuss_mainscreen> {
  bool isloggedin = false;

  void sigINUser() async {
    FirebaseAuthMethods(FirebaseAuth.instance).singinwithGoogle(BuildContext);
  }

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
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: StreamBuilder<List<DiscusionsList>>(
                    // initialData: sample,
                    stream: readFinalDiscus(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<DiscusionsList> DiskSus = snapshot.data!;
                        return ListView.builder(
                          itemCount: DiskSus.length,
                          itemBuilder: (context, index) {
                            var discussionData = DiskSus[index];
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 50.0),
                              decoration: BoxDecoration(
                                color: kdiscussionpage,
                                borderRadius: BorderRadius.circular(35.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(234, 22, 22, 22),
                                    blurRadius: 25.0,
                                    spreadRadius: 5.0,
                                  ),
                                ],
                              ),
                              height: 300.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 5.0),
                                      child: discussion_user(
                                        name: discussionData.username,
                                        time: discussionData.dateAdded,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 1.0),
                                      // color: kErrorColor,
                                      child: Column(
                                        children: [
                                          Container(
                                            // color: kErrorColor,
                                            height: 40.0,
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              // "a big realllly big wuestion to test it i hope it work fine",
                                              discussionData.question,
                                              style: GoogleFonts.poppins(
                                                color: ksecondarytext,
                                                fontSize: 30.0,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // color: kErrorColor,
                                            // height: 50.0,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.09,
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              discussionData.description,
                                              style: GoogleFonts.poppins(
                                                color: ksecondarytext,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 1.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          SizedBox(
                                            child: Row(
                                              children: <Widget>[
                                                LikeButton(),
                                                Text(
                                                  ' ${discussionData.likes}',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 20.0,
                                                      color: kprimarytext),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  '${discussionData.listAnswer?.length} Answers',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 20.0,
                                                      color: kprimarytext),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            // color: kErrorColor,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        discuss_openscreen(
                                                      current: discussionData,
                                                      listAnswer: discussionData
                                                          .listAnswer!,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Center(
                                                child: Text(
                                                  "See Answers",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 20.0,
                                                      color: kprimarytext),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },

                          // children: discussionData.map<Widget>(buildBox).toList(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            snapshot.error.toString(),
                            style: GoogleFonts.aBeeZee(
                              color: kprimarytext,
                              fontSize: 60.0,
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
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
                child: SafeArea(
                  child: Center(
                      child: isloggedin == true
                          ? afterLogin()
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: FittedBox(
                                    child: Text(
                                      "sign in to answer or ask question",
                                      style: GoogleFonts.poppins(
                                        color: ksecondarytext,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                SignInButton(
                                  Buttons.GoogleDark,
                                  onPressed: sigINUser,
                                ),
                              ],
                            )),
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

// Widget buildBox(DiscusionsList DiskSus) {
//   // final boxHeight = MediaQuery.of(context).size.height * 0.3;
// //
//   return Container(
//     margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
//     decoration: BoxDecoration(
//       color: kdiscussionpage,
//       borderRadius: BorderRadius.circular(35.0),
//       boxShadow: const [
//         BoxShadow(
//           color: Color.fromARGB(234, 22, 22, 22),
//           blurRadius: 25.0,
//           spreadRadius: 5.0,
//         ),
//       ],
//     ),
//     height: 300.0,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Expanded(
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//             child: discussion_user(
//               name: discussionData.username,
//               time: discussionData.dateAdded,
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
//             // color: kErrorColor,
//             child: Column(
//               children: [
//                 Container(
//                   // color: kErrorColor,
//                   height: 40.0,
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     // "a big realllly big wuestion to test it i hope it work fine",
//                     discussionData.question,
//                     style: GoogleFonts.poppins(
//                       color: ksecondarytext,
//                       fontSize: 30.0,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   // color: kErrorColor,
//                   height: 50.0,
//                   height: MediaQuery.of(context).size.height * 0.09,
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     discussionData.description,
//                     style: GoogleFonts.poppins(
//                       color: ksecondarytext,
//                       fontWeight: FontWeight.w300,
//                       fontSize: 15.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Divider(
//           thickness: 1.5,
//         ),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 20.0),
//             margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 SizedBox(
//                   child: Row(
//                     children: <Widget>[
//                       LikeButton(),
//                       Text(
//                         ' ${discussionData.likes}',
//                         style: GoogleFonts.poppins(
//                             fontSize: 20.0, color: kprimarytext),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   child: Row(
//                     children: <Widget>[
//                       Text(
//                         '${discussionData.listAnswer?.length} Answers',
//                         style: GoogleFonts.poppins(
//                             fontSize: 20.0, color: kprimarytext),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10.0),
//                   // color: kErrorColor,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => discuss_openscreen(
//                             current: DiskSus,
//                             listAnswer: discussionData.listAnswer!,
//                           ),
//                         ),
//                       );
//                     },
//                     child: Center(
//                       child: Text(
//                         "See Answers",
//                         style: GoogleFonts.poppins(
//                             fontSize: 20.0, color: kprimarytext),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );

//   // return ListTile(
//   //   leading: Text(discussionData.description),
//   // );
// }
List<DiscusionsList> sample = [
  DiscusionsList(
      dateAdded: 'march lol',
      username: "user1",
      question: "what si best platform?",
      description:
          'Before you stuensible reasons behind every tradeBefore you stuensible',
      likes: 3,
      listAnswer: [
        {
          "answer": "yo",
          "timeofpublish": "sfdsf",
          "uid": "qwe",
          'username': "user1",
        },
        {
          "answer": "7878",
          "timeofpublish": "665656",
          "uid": "qwe",
          'username': "user55",
        }
      ]),
  DiscusionsList(
      dateAdded: 'yogoo',
      username: "user2",
      question: "am i good developer?",
      description: "desc2 ",
      docID: "uid2",
      likes: 1,
      listAnswer: [
        {
          "answer": "yo",
          "timeofpublish": "sfdsf",
          "uid": "qwe",
          'username': "user2",
        }
      ]),
  DiscusionsList(
      username: "user3",
      question: "qui3",
      description: "desc3 ",
      docID: "uid3",
      listAnswer: [
        {
          "answer": "yo",
          "timeofpublish": "sfdsf",
          "uid": "qwe",
          'username': "user5",
        }
      ])
];
