import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/product/index.dart';

import '../constants/color_constant.dart';

class ScrollViewProduct extends StatelessWidget {
  ScrollViewProduct({
    Key? key,
  }) : super(key: key);
  List<String> products = [
    "Sản phẩm A",
    "Sản phẩm B",
    "Sản phẩm C",
    "Sản phẩm D",
  ];
  @override
  Widget build(BuildContext context) {
    return
        // height: size.height,
        Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: maunut,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
              child: Text(
                "Tin đăng mới",
                style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
              child: Text(
                "Mới nhất",
                style: GoogleFonts.quicksand(
                    fontSize: 15, fontWeight: FontWeight.w700, color: maunut),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            ScrollCard(),
            ScrollCard(),
            ScrollCard(),
            ScrollCard(),
            ScrollCard(),
            ScrollCard(),
          ],
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
              MaterialPageRoute(builder: ((context) => const ProductPage())));
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
                      'Tên sản phẩm',
                      style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: maunut),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Loại sản phẩm',
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
