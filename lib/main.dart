import 'package:flutter/material.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/login/index.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/profile/view/index.dart';
import 'package:provider/provider.dart';

import 'login/models/dto/login_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserModel(),
        )
      ],
      child: MaterialApp(
        title: 'Hackathon UIT 2022',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: mainLogin(),
      ),

    );
  }
}
