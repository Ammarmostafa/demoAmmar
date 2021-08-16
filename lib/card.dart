import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatefulWidget {
  String content;
  MyCard({this.content=" - "});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 15,
        child: Center(child: Text(widget.content),
      ),
      ),
    );
  }
}
