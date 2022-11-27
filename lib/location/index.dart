import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../product/index.dart';

class LocationFindPage extends StatefulWidget {
  const LocationFindPage({Key? key}) : super(key: key);

  @override
  State<LocationFindPage> createState() => _LocationFindPageState();
}

class _LocationFindPageState extends State<LocationFindPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const ProductPage())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/location_line.png",
              width: 44,
              height: 44,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Xin vui lòng đợi trong giây lát...',
              style: GoogleFonts.quicksand(
                  fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
