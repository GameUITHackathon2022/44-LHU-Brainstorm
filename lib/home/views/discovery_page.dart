import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Discovery extends StatelessWidget {
  const Discovery({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Title(),
        GridViewsButton(),
      ],
    );
  }
}

class GridViewsButton extends StatelessWidget {
  GridViewsButton({
    Key? key,
  }) : super(key: key);
  String image = "assets/imgs/test.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 220,
        padding: EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 50.0, mainAxisSpacing: 20.0),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            );
          },
        ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xff00A182)),
          ),
          child: Text(
            "Khám phá danh mục",
            style: GoogleFonts.quicksand(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ));
  }
}
