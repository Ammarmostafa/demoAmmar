import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';



//   launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
 pushPage(BuildContext context, Widget widget){
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
 
 }
 popPage(BuildContext context){
   Navigator.pop(context);
 }