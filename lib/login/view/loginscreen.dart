
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/controllers/logincontroller.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/index.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/models/dto/login_model.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/models/dto/req/loginmodel.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/view/loadpage.dart';
import 'package:provider/provider.dart';


// class loginScreen extends StatefulWidget {
//   const loginScreen({super.key});

//   @override
//   State<loginScreen> createState() => _loginScreenState();
// }

// const mau = const Color(0xff00A182);
// bool isChecked = false;
// String? errorUser;
// String? errorPass;
// TextEditingController _tk = TextEditingController();
// TextEditingController _pass = TextEditingController();
// UserControllerr _user = UserControllerr();
// Login? _userOTD;
// String bug = 'Sai tài khoản hoặc mật khẩu ';
// String a = '';

// Login? outStanding;
// List<Login> list = [];

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              children: [
                TextField(
                  controller: _tk,
                  onChanged: (value) {
                    if (value != '') {
                      errorUser = null;
                      setState(() {});
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    errorText: errorUser,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    hintText: "Đăng nhập",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (value) {
                    if (value != '') {
                      errorPass = null;
                      setState(() {});
                    }
                  },
                  obscureText: true,
                  controller: _pass,
                  decoration: InputDecoration(
                    errorText: errorPass,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    hintText: "Mật khẩu",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  a,
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'Nhớ mật khẩu',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Quên mật khẩu',
                          style: TextStyle(color: Colors.orange),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      spreadRadius: 3),
                ],
              ),
              width: double.infinity,
              child: Container(
                  margin: const EdgeInsets.only(
                      top: 120, left: 90, right: 90, bottom: 120),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: mau,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (_tk.text == '') {
                        errorUser = 'Không được để trống  ';
                        setState(() {});
                        return;
                      }
                      if (_pass.text == '') {
                        errorPass = 'Không được để trống  ';
                        setState(() {});
                        return;
                      }

                      _user.postUser(_tk.text, _pass.text).then((value) {
                        if (value != null) {
                          Provider.of<UserModel>(context, listen: false)
                              .setUserLogin(value);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (value) => const loadPage()),
                          );
                        } else {
                          errorUser = '';
                          errorPass = '';
                          setState(() {
                            a = bug;
                          });
                          return;
                        }
                      });
                    },
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

