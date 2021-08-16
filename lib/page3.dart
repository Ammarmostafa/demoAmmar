import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Page3 extends StatelessWidget {
  int counter;
  Page3(this.counter);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView (
      children: [Center( 
        child: Text ('$counter',
        style: TextStyle(color: Colors.grey.shade700, fontSize: 40),)
      ),
      ],
      ),
    );
  }
}
