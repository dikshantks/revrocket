// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revrocket/clors.dart';
import 'package:revrocket/pages/home_page.dart';

class Discussion_page extends StatelessWidget {
  Discussion_page({Key? key, required this.screen}) : super(key: key);

  Size screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 100.0,
        leading: Reuselogo(onpress: () {
          Navigator.pop(context);
        }),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          // color: Colors.amber,
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none,
              ),
              hintText: "Search",
              fillColor: Colors.amber,
              filled: true,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(0.75), //15
                child: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: kprimaryscaffhold,
      ),
    );
  }
}
