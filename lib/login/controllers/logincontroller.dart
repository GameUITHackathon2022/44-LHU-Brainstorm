import 'dart:convert';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/models/dto/req/loginmodel.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/models/dto/res/loginres.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/until/loginuntil.dart';
import 'package:http/http.dart' as http;

class UserControllerr {
  Future<LoginResDto?> postUser(String phone, String pass) async {
    var response = await http
        .post(Uri.parse(urllogin), body: {"phone": phone, 'pass': pass});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    // pri"nt(user + pass);

    if (response.statusCode == 200) {
      return LoginResDto.fromRawJson(response.body);
    } else {
      print('Error');
      return null;
    }
  }
}
