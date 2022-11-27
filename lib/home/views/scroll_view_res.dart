import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/profile/view/index.dart';

import '../constants/color_constant.dart';

class ScrollViewRes extends StatelessWidget {
  const ScrollViewRes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // height: size.height,
        Column(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: maunut,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
              child: Text(
                "Nhà hàng gần đây",
                style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ScrollCard(),
              ScrollCard(),
              ScrollCard(),
              ScrollCard(),
              ScrollCard(),
              ScrollCard(),
            ],
          ),
        ),
      ),
    ]);
  }
}

class ScrollCard extends StatelessWidget {
  const ScrollCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const ProfilePage())));
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/imgs/test.jpg',
                    fit: BoxFit.contain,
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Tên nhà hàng',
                      style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: maunut),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Địa chỉ',
                      style:
                          GoogleFonts.quicksand(fontSize: 12, color: colorHint),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
