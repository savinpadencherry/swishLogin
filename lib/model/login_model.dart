import 'package:flutter/cupertino.dart';

class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({required this.token, required this.error});
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        // ignore: prefer_if_null_operators
        token: json["token"] != null ? json["token"] : "",
        // ignore: prefer_if_null_operators
        error: json["error"] != null ? json["error"] : "");
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({required this.email, required this.password});

  //map content into json
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };
    return map;
  }
}
