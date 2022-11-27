import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathonuit2022_brainstorm_client_flutter/product/constants/color_constant.dart';
import 'package:readmore/readmore.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorAppbar,
      appBar: AppBar(
        backgroundColor: colorAppbar,
        title: Text(
          "Tên danh mục",
          style: GoogleFonts.quicksand(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: colorBackground,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                top: 110,
                bottom: 0,
                child: Container(
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      color: colorBackground,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 130,
                      ),
                      Text(
                        'Tên sản phẩm',
                        style: GoogleFonts.quicksand(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: colorTitle),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '50.000 đ',
                        style: GoogleFonts.quicksand(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colorAppbar),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(253, 173, 21, 1),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '4.5',
                            style: GoogleFonts.quicksand(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: colorHint),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Về sản phẩm',
                        style: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colorTitle),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReadMoreText(
                        'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
                        trimLines: 2,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Xem thêm',
                        trimExpandedText: 'Rút gọn',
                        style: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colorHint),
                        lessStyle: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue),
                        moreStyle: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                )),

            ///
            /// Avatar
            ///
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 220,
                  height: 220,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                left: 20,
                right: 20,
                bottom: 20,
                child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: SizedBox(
                              height: 400,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 128,
                                        height: 128,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Tên sản phẩm',
                                            style: GoogleFonts.quicksand(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                                color: colorTitle),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '50.000 đ',
                                            style: GoogleFonts.quicksand(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: colorAppbar),
                                          ),
                                        ],
                                      ))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.blue)),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "Nhập số ngày cung ứng",
                                      ),
                                      controller: _controller,
                                    ),
                                  ),
                                  const Spacer(),
                                  TextButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromRGBO(
                                                      0, 161, 130, 1))),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 30),
                                        child: Text(
                                          'Xác nhận',
                                          style: GoogleFonts.quicksand(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(0, 161, 130, 1))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Đặt mua',
                        style: GoogleFonts.quicksand(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
