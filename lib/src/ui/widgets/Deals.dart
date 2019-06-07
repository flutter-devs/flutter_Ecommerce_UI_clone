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
              child: Image.network(
                  'https://rukminim1.flixcart.com/flap/400/610/image/14d50e90c8413811.jpg?q=90'),
            ),
            Expanded(
              child: Image.network(
                  'https://rukminim1.flixcart.com/flap/400/610/image/fe6fb023f400c86f.jpg?q=90'),
            )
          ],
        ),
      ),
    );
  }
}
