// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imagepath = [
      "https://firebasestorage.googleapis.com/v0/b/revenue-rock.appspot.com/o/1.png?alt=media&token=600dfb03-f1cd-4e82-9bca-be7a225c7d77",
      "https://firebasestorage.googleapis.com/v0/b/revenue-rock.appspot.com/o/5.png?alt=media&token=b98d4331-82bc-4f10-b4b4-a81d48545e05",
      "https://firebasestorage.googleapis.com/v0/b/revenue-rock.appspot.com/o/6.png?alt=media&token=70952be9-f18d-461b-a20b-7e75a4d550d4"
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
                // color: Colors.yellow,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    // reverse: true,
                    autoPlayInterval: Duration(seconds: 2),
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
    this.url,
    this.index,
  }) : super(key: key);

  final url;
  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900.0,
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      // color: Colors.red,
      child: Image.network(url, fit: BoxFit.contain),
    );
  }
}
