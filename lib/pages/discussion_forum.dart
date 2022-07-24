// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revrocket/UI%20models/constants.dart';
import 'package:revrocket/components/discussuion_bubble.dart';
import 'package:revrocket/pages/discussion_openpage.dart';
import 'package:revrocket/pages/home_page.dart';

class Discussion_page extends StatelessWidget {
  const Discussion_page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
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
                    children: const <Widget>[
                      Text("HI "),
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
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final paletSize = size.height * 0.3;
    return Column(
      children: [
        Expanded(
          child: Row(
            children: <Widget>[
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
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return discussion_bubble(
                        descrition: "ddfg",
                        name: "sfsdf",
                        palet_size: paletSize,
                        question: index.toString(),
                      );
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
                          ? Container(
                              height: 30.0,
                              width: 400.0,
                              color: kErrorColor,
                            )
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
                                  onPressed: () {
                                    setState(() {
                                      isloggedin = true;
                                    });
                                  },
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

class afterLogin extends StatelessWidget {
  const afterLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("write your quiestion"),
        TextField(
          autocorrect: false,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: "am i dumb?",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        Text("decribe"),
        SizedBox(
          height: 200.0,
          child: TextFormField(
            expands: true,
            autocorrect: false,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText:
                  "no seriously this website took me a whoole month \n and why did i chose flutter on web stack for this ",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class comingSoonScreen extends StatelessWidget {
  const comingSoonScreen({
    Key? key,
    required this.paletSize,
  }) : super(key: key);

  final double paletSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: kdiscussionpage,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(blurRadius: 20.0),
          ],
        ),
        height: paletSize,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/flyers/coder_atwork.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class signin_google extends StatefulWidget {
  signin_google({
    Key? key,
    required this.onpress,
  }) : super(key: key);

  VoidCallback onpress;

  @override
  State<signin_google> createState() => _signin_googleState();
}

class _signin_googleState extends State<signin_google> {
  @override
  Widget build(BuildContext context) {
    // var usernow = UserModel();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
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
          onPressed: widget.onpress,
        ),
      ],
    );
  }
}

class DiscussionTexts extends StatefulWidget {
  DiscussionTexts({Key? key, required this.heading, required this.onpress})
      : super(key: key);

  String heading;

  VoidCallback onpress;

  @override
  State<DiscussionTexts> createState() => _DiscussionTextsState();
}

class _DiscussionTextsState extends State<DiscussionTexts> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
          top: 20.0, bottom: ishover ? 20.0 : 40.0, left: 10.0, right: 10.0),
      duration: const Duration(milliseconds: 100),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: InkWell(
          onTap: widget.onpress,
          onHover: (f) {
            setState(() {
              ishover = f;
            });
          },
          child: Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      spreadRadius: 5, blurRadius: 5, color: Colors.black12)
                ],
                color: kdiscussionpage,
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Text(
              widget.heading,
              style: GoogleFonts.poppins(
                fontSize: 30.0,
                color: kprimarytext,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
