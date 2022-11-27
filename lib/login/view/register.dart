import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class registerScreen extends StatefulWidget {
  @override
  State<registerScreen> createState() => _registerScreenState();
}

const String _title = 'Radio Button Example';
int check = 0; //0 la nha hang, 1 la nong trai

const mau = const Color(0xff00A182);

class _registerScreenState extends State<registerScreen> {
  TextEditingController _name=TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _address   = TextEditingController();
  TextEditingController _check = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  FadeInRight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      controller: _name,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: "Tên",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                       controller: _phone,
                    
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: "Số điện thoại",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                       controller: _pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: "Mật khẩu",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                       controller: _address,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: "Địa chỉ",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Nhà hàng",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                Radio(
                  value: 1,
                  groupValue: check,
                   fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                  onChanged: (newvalue) {
                    setState(() {
                      check = 1;
                    });
                  },
                ),
                Row(
                  children: [
                    Text("Nông trại",style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,fontWeight: FontWeight.bold)),
                    Radio(
                       fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      value: 0,
                      groupValue: check,
                      onChanged: (newvalue) {
                        setState(() {
                          check = 0;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255), spreadRadius: 3),
                ],
              ),
              width: double.infinity,
              child: Container(
                  margin: const EdgeInsets.only(top: 30,left: 100,right: 100,bottom: 100),
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  decoration: BoxDecoration(
                    color: mau,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Đăng kí',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
