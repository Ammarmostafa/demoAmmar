import 'package:flutter/material.dart';


// ignore: must_be_immutable
class SecondRoute extends StatefulWidget {
  // ignore: non_constant_identifier_names
  int CounterFrom1;
  // ignore: non_constant_identifier_names
  SecondRoute({this.CounterFrom1 = 0});
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "${widget.CounterFrom1}",
            style: Theme.of(context).textTheme.headline4,
          ),
          ),

        ],
      ),
    );
  }
}
