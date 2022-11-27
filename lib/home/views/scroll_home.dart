import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../profile/view/index.dart';

class ScrollHome extends StatelessWidget {
  final List<String> images;
  const ScrollHome({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: CarouselSlider(
        options: CarouselOptions(
            reverse: true, autoPlay: true, enlargeCenterPage: true),
        items: images.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ProfilePage())));
                },
                child: ClipRRect(
                  child: Image(
                    image: AssetImage(
                      i,
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
