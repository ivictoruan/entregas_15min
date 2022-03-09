import 'package:entregas_15min/src/screens/home/widgets/custom_horizontal_scroll.dart';
import 'package:entregas_15min/src/widgets/custom_carousel.dart';
import 'package:flutter/material.dart';

import '../../json/constant.dart';
import 'widgets/categories.dart';
import 'widgets/custom_line.dart';
import 'widgets/home_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        // HOME IMAGE
        HomeImage(),
        SizedBox(height: 10),
        // CATEGORIES
        CustomLine(text: "Categorias"),
        SizedBox(height: 10),
        Categories(),
        SizedBox(height: 10),
        // RECOMMENDS
        CustomLine(text: "Recomendados para você"),

        SizedBox(height: 10),
        CustomHorizontalScroll(list: recommends),

        SizedBox(height: 10),
        // CUSTOM SLIDER
        CustomeCarouselHomePage(items: slider),
        SizedBox(height: 10),
        // Vistos recentemente, Todos
        CustomLine(text: "Vistos recentemente"),
        SizedBox(height: 10),
        CustomHorizontalScroll(list: recently),
        SizedBox(height: 10),
      ],
    );
  }
}
