import 'package:entregas_15min/src/widgets/custom_carousel.dart';
import 'package:flutter/material.dart';

import '../json/constant.dart';
import '../theme/colors.dart';

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
    Size size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        // HOME IMAGE
        Stack(
          children: [
            Container(
              width: size.width,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    homeImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // ACTIONS
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: white,
                      size: 28,
                    ),
                    onPressed: () {},
                  ),
                  // const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(
                      Icons.search_outlined,
                      color: white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // text with icon button
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Coleção de Verão",
                      style: TextStyle(
                          color: white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Text(
                          "DESCUBRA",
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: white, size: 18),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Categorias",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Todas",
                    style: TextStyle(
                        color: grey, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_outlined,
                        size: 18, color: grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        // CATEGORIES
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              categories.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    // antes era um container
                    width: 180,
                    height: 220,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  categories[index]["imgUrl"] as String),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          // opacidade as imagens
                          decoration: BoxDecoration(
                            color: black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 10,
                          child: Text(
                            categories[index]["title"] as String,
                            style: const TextStyle(
                                color: white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recomendados para você",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Todas",
                    style: TextStyle(
                        color: grey, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_outlined,
                        size: 18, color: grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        // RECOMMENDS
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              recommends.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                recommends[index]["imgUrl"] as String),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recommends[index]["title"] as String,
                              style: const TextStyle(
                                color: black,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                // fontSize: 18,
                              ),
                            ),
                            // const SizedBox(height: 5,),
                            Text(
                              " R\$ ${recommends[index]["price"]} ",
                              style: const TextStyle(
                                color: grey,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                // fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 30),
        // CUSTOM SLIDER
        const CustomeCarouselHomePage(items: slider),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Vistos recentemente",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Todos",
                    style: TextStyle(
                        color: grey, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_outlined,
                        size: 18, color: grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        // RECENTLY
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              recently.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                recently[index]["imgUrl"] as String),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recently[index]["title"] as String,
                              style: const TextStyle(
                                color: black,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                // fontSize: 18,
                              ),
                            ),
                            // const SizedBox(height: 5,),
                            Text(
                              " R\$ ${recently[index]["price"]} ",
                              style: const TextStyle(
                                color: grey,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                // fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
