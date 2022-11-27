import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/models/dto/login_model.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/models/dto/req/loginmodel.dart';
import 'package:provider/provider.dart';

import '../../login/models/dto/res/loginres.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _profileMainState extends State<profileMain> {
  late LoginResDto user;
  Color mau = const Color(0xff00A182);
  @override
  void initState() {
    user = Provider.of<UserModel>(context, listen: false).user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mau,
      appBar: AppBar(
        backgroundColor: mau,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: mau),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(30))
                //more than 50% of width makes circle
                ),
            margin: EdgeInsets.only(top: 60),
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100)
                      //more than 50% of width makes circle
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Text(
                  '${user.name}',
                  style: TextStyle(
                      fontSize: 28, color: mau, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Quận 7, Thành Phố Hồ Chí Minh,',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 184, 184, 184)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Đây là kênh chính thức của Nhà Hàng BÁ BÁ .',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 184, 184, 184)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: mau,
                            borderRadius: BorderRadius.circular(10)),
                        height: 90,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bài viết",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: mau,
                            borderRadius: BorderRadius.circular(10)),
                        height: 90,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Người theo dõi",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: mau,
                            borderRadius: BorderRadius.circular(10)),
                        height: 90,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Đang theo dõi",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
