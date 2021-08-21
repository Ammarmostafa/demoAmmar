

import 'package:demoapp/Models/Json1.dart';
import 'package:demoapp/card.dart';
import 'package:demoapp/map.dart';
import 'package:demoapp/reusable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserDetails extends StatefulWidget {
  Users users;
  UserDetails(this.users);
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("User Details")),
      ),
      body: ListView(
        children: [
          MyCard(
            content: "${widget.users.name}",
          ),
          InkWell(
            child: Text(
              "Email:${widget.users.email}",
            ),
            onTap: () {
              // launchURL("mailto:${widget.users.email}");
            },
          ),
          InkWell(
            onTap: () {
              // launchURL("tel:${widget.users.phone}");
            },
            child: Text(
              "Phone:${widget.users.phone}",
            ),
          ),
          Divider(),
          InkWell(
              onTap: () {
                // launchURL("https:${widget.users.website}");
              },
              child: Text(
                "website:${widget.users.website}",
              )),
         SizedBox(width: 25,
         height: 25,),
           IconButton(
          icon: const Icon(Icons.map),
          onPressed: () {
             pushPage(context, MapSample(widget.users.address!.geo));
          },
          iconSize: 40,
        ), 
          Center(child: Text("The map")),  
        ],
      ),
    );
  }
}
