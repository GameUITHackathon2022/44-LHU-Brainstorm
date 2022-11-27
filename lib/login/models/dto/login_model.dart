import 'package:flutter/cupertino.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/models/dto/res/loginres.dart';

class UserModel extends ChangeNotifier {
  late LoginResDto user;
  void setUserLogin(LoginResDto data) {
    user = data;
    notifyListeners();
  }
}
