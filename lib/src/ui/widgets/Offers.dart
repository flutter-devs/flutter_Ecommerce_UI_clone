import 'package:flutter/material.dart';

class Thirdlist extends StatefulWidget {
  @override
  _ThirdlistState createState() => _ThirdlistState();
}

class _ThirdlistState extends State<Thirdlist> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 5,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image.network(
                  'https://rukminim1.flixcart.com/flap/267/284/image/98cc1dc1cf46f8b2.jpg?q=90'),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.network(
                  'https://rukminim1.flixcart.com/flap/267/284/image/2c958a68d47f14df.jpg?q=90'),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.network(
                  'https://rukminim1.flixcart.com/flap/259/276/image/0ae80382c0fd6f32.jpg?q=90'),
            ),
          ),
        ],
      ),
    );
  }
}
