// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../UI models/constants.dart';

import '../components/top_navbar.dart';

import '../components/main_flyer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    String name = "revenue rocket";
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: TopNavBar(screen: screen, name: name),
          leadingWidth: 100.0,
          leading: Reuselogo(
            onpress: () {},
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: kprimaryscaffhold,
        ),
        child: Column(
          children: [
            Divider(
              thickness: 0.3,
              color: klines,
            ),
            const Mainscreen(),
            SizedBox(
              width: screen.width,
              height: screen.height * 0.09,
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
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: InkWell(
          enableFeedback: false,
          onTap: widget.onpress,
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
