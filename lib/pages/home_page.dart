// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revrocket/clors.dart';

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
        leading: Reuselogo(
          onpress: () {},
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: kprimaryscaffhold,
        ),
        child: Column(
          children: [
            const Mainscreen(),
            SizedBox(
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

class Reuselogo extends StatefulWidget {
  const Reuselogo({Key? key, required this.onpress}) : super(key: key);

  final VoidCallback onpress;

  @override
  State<Reuselogo> createState() => _ReuselogoState();
}

class _ReuselogoState extends State<Reuselogo> {
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
        onTap: widget.onpress,
        child: Image.asset(
          'assets/logo.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
