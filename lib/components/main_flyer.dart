// ignore_for_file: camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imagepath = [
      'assets/flyers/2.png',
      "assets/flyers/3.png",
    ];
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  // color: Colors.blue,
                  ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.yellow,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlayCurve: Curves.easeIn,
                    autoPlay: true,
                    // reverse: true,
                    autoPlayInterval: const Duration(seconds: 2),
                  ),
                  itemCount: imagepath.length,
                  itemBuilder: (context, index, realindex) {
                    return Image_builder(
                      index: index,
                      url: imagepath[index],
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  // color: Colors.blue,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class Image_builder extends StatelessWidget {
  Image_builder({
    Key? key,
    this.url = '',
    this.index = 0,
  }) : super(key: key);

  String url;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900.0,
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      // color: Colors.red,
      child: Container(
        color: Colors.red,
      ),
      //  Image.asset(url, fit: BoxFit.contain),
    );
  }
}
