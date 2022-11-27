import 'package:flutter/material.dart';
import 'constants/color_constant.dart';
import 'views/scroll_home.dart';
import 'views/scroll_view_product.dart';
import 'views/scroll_view_res.dart';

// home's restaurant
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _search = TextEditingController();
  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mautrang,
        appBar: AppBar(
            title: const Text('Ứng dụng giải quyết sản phẩm thải'),
            elevation: 0,
            backgroundColor: mauxanh,
            toolbarHeight: 80),
        body: SingleChildScrollView(
          child: Column(children: [
            //TODO: Views
            Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                child: TextField(
                  style: const TextStyle(fontSize: 18.0, color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        _search.clear();
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                    ),
                    hintText: "Tìm kiếm...",
                  ),
                  controller: _search,
                )),
            const ScrollHome(
              images: [
                "assets/imgs/tuananh.png",
                "assets/imgs/tuananh.png",
                "assets/imgs/tuananh.png"
              ],
            ),
            ScrollViewProduct(),
            const SizedBox(
              height: 20,
            ),
            const ScrollViewRes()
          ]),
        ));
  }
}
