// To parse this JSON data, do
//
//     final signUpPostOtd = signUpPostOtdFromJson(jsonString);

import 'dart:convert';

SignUpPostOtd signUpPostOtdFromJson(String str) => SignUpPostOtd.fromJson(json.decode(str));

String signUpPostOtdToJson(SignUpPostOtd data) => json.encode(data.toJson());

class SignUpPostOtd {
    SignUpPostOtd({
      required  this.name,
      required  this.phone,
      required  this.address,
      required  this.pass,
      required  this.permission,
    });

    String name;
    String phone;
    String address;
    String pass;
    String permission;

    factory SignUpPostOtd.fromJson(Map<String, dynamic> json) => SignUpPostOtd(
        name: json["name"],
        phone: json["phone"],
        address: json["address"],
        pass: json["pass"],
        permission: json["permission"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "address": address,
        "pass": pass,
        "permission": permission,
    };
}
