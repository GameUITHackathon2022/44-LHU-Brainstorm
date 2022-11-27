// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:hackathonuit2022_brainstorm_client_flutter/login/view/loginscreen.dart';
// import 'package:hackathonuit2022_brainstorm_client_flutter/login/view/register.dart';
// import 'package:animate_do/animate_do.dart';

// class mainLogin extends StatefulWidget {
//   @override
//   State<mainLogin> createState() => _mainLoginState();
// }

// bool click = true;
// const backround = const Color(0xff00A182);

class _mainLoginState extends State<mainLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backround,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40,top: 120),
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        click = true;
                      });
                    },
                    child: Text(
                      "Đăng nhập",
                      style: TextStyle(
                          fontSize: 18,
                          color: backround,
                          fontWeight:click? FontWeight.bold:null),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        click = false;
                      });
                    },
                    child: Text(
                      "Đăng kí",
                      style: TextStyle(
                          fontSize: 18,
                          color: backround,
                          fontWeight: click ? null :FontWeight.bold),
                    ),
                  ),
                ],  
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: click ? loginScreen() : registerScreen(),
          )
        ],    
      ),
    );
  }
}

