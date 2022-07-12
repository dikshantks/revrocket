import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imagepath = [
      "/home/dikshant/Desktop/revenuerokcet/revrocket/assets/image1.png",
      "/home/dikshant/Desktop/revenuerokcet/revrocket/assets/informative1.png"
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
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                // color: Colors.yellow,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    reverse: true,
                    autoPlayInterval: Duration(seconds: 100),
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
                color: Colors.blue,
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
      color: Colors.red,
      child: Image.asset(url, fit: BoxFit.cover),
    );
  }
}
