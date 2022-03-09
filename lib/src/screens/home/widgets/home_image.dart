import 'package:flutter/material.dart';

import '../../../json/constant.dart';
import '../../../theme/colors.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
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
                      color: white, fontSize: 25, fontWeight: FontWeight.bold),
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
    );
  }
}
