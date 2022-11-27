import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.phone,
  required  this.pass,
  });

  String phone;
  String pass;
  
  factory Login.fromJson(Map<String, dynamic> json) => Login(
        phone: json["phone"],
        pass: json["pass"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone,
        "pass": pass,
      };
}
