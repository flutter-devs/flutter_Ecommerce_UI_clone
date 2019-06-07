import 'package:flutter/material.dart';

class Firstlist extends StatefulWidget {
  @override
  _FirstlistState createState() => _FirstlistState();
}

class _FirstlistState extends State<Firstlist> {
  var name = [
    'https://rukminim1.flixcart.com/flap/132/124/image/0ec0f8.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/2af8b5e316c12e7d.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/54abb23755dc69db.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/82733b7b3fef58d5.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/e651df.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/0574df.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/a36b7b1c84e8203a.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/b3af3e.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/fb63f3.jpg?q=90',
    'https://rukminim1.flixcart.com/flap/132/124/image/52d4da926dbea236.jpg?q=90'
  ];

  buildItem(BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width / 6,
      height: MediaQuery.of(context).size.height / 11,
      child: Image.network(
        name[index],
        height: MediaQuery.of(context).size.height / 11,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return buildItem(context, index);
        },
      ),
    );
  }
}
