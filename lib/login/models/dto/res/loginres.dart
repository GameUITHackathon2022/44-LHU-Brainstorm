// To parse this JSON data, do
//
//     final loginResDto = loginResDtoFromJson(jsonString);

import 'dart:convert';

class LoginResDto {
  LoginResDto({
    required this.name,
    required this.phone,
    required this.address,
    required this.permission,
    required this.product,
  });

  String name;
  String phone;
  String address;
  String permission;
  List<String> product;

  factory LoginResDto.fromRawJson(String str) =>
      LoginResDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResDto.fromJson(Map<String, dynamic> json) => LoginResDto(
        name: json["name"],
        phone: json["phone"],
        address: json["address"],
        permission: json["permission"],
        product: List<String>.from(json["product"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "address": address,
        "permission": permission,
        "product": List<dynamic>.from(product.map((x) => x)),
      };
}
