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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(child: TopNavBar(screen: screen, name: name)),
        leadingWidth: 100.0,
        leading: Reuselogo(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff111111),
        ),
        child: Column(
          children: [
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

class Reuselogo extends StatelessWidget {
  const Reuselogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: InkWell(
        enableFeedback: false,
        onTap: () {},
        child: Container(
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
