import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
