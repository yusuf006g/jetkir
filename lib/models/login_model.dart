import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginModel {
  String login;
  String password;
  
  LoginModel({
    required this.login,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
    };
  }
}
