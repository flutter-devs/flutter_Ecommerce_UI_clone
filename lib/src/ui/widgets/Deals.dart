import 'package:flutter/material.dart';

class Sixthlist extends StatefulWidget {
  @override
  _SixthlistState createState() => _SixthlistState();
}

class _SixthlistState extends State<Sixthlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                  "assets/hair_dryer.png"),
            ),
            Expanded(
              child: Image.asset(
                  "assets/laptop.png"),
            )
          ],
        ),
      ),
    );
  }
}
