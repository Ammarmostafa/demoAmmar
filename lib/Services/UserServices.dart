import 'package:demoapp/Models/Json1.dart';
import 'package:dio/dio.dart';


class UserServices {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String users = "users";

  Future<List<Users>> getUsers() async {
    List<Users> usersList= [];
    Response res =  await  Dio().get("$baseUrl$users");
    var data = res.data;
    data.forEach((element){
    usersList.add(Users.fromJson(element));

    });
    return usersList;
  }
}
