import 'package:flutter/material.dart';

import '../../../json/constant.dart';
import '../../../theme/colors.dart';

class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return         SingleChildScrollView(
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
        );
  }
}