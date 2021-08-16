import 'package:demoapp/Models/Json1.dart';
import 'package:demoapp/Services/UserServices.dart';
import 'package:demoapp/card.dart';
import 'package:demoapp/reusable.dart';
import 'package:demoapp/userDetails.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool loading = true;
  List<Users> users = [];

  getUsersList() async {
    users = await UserServices().getUsers();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUsersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell
                  ( onTap:(){
                    pushPage(context, UserDetails(users[index]));
                  } ,
                    child: MyCard(content: "${users[index].name}",))
                );
              },
            ),
    );
  }
}
