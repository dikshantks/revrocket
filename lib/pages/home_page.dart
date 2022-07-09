import 'package:flutter/material.dart';

import '../components/top_navbar.dart';

import '../components/main_flyer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    String name = "revenue rocket";
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff111111),
        ),
        child: Column(
          children: [
            TopNavBar(screen: screen, name: name),
            const Mainscreen(),
            Container(
              width: screen.width,
              height: screen.height * 0.09,
              // color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
