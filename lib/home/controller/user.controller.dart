import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/user.dto.dart';
import '../utils/url.dart';

class UserController {
  Future<SignUpPostOtd?> getUser() async {
    var response = await http.get(Uri.parse('http://192.168.43.250:5000/user/show'));

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      return signUpPostOtdFromJson(response.body);
    } else {
      return null;
    }
  }
}
