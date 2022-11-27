import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/index.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/profile/view/index.dart';

class loadPage extends StatefulWidget {
  const loadPage({super.key});
  @override
  State<loadPage> createState() => _loadPageState();
}

class _loadPageState extends State<loadPage> {
  @override
  void initState() {
    super.initState();
    setState(() {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
      });
    });
  }

  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: SpinKitChasingDots(
        color: Color.fromARGB(255, 0, 69, 5),
        size: 100,
      ),
    );
  }
}
