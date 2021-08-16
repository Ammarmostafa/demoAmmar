import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageTwo extends StatefulWidget {
  int counter = 0;
  PageTwo({this.counter = 0});
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageTwo 2"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            '${widget.counter}',
            style: TextStyle(fontSize: 60, color: Colors.green),   
          )),
        ],
      ),
    );
  }
}
