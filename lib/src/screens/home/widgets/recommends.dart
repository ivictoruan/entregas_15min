import 'package:flutter/material.dart';

import '../../../json/constant.dart';
import '../../../theme/colors.dart';

class Recommends extends StatelessWidget {
  const Recommends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                        image:
                            NetworkImage(recommends[index]["imgUrl"] as String),
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
    );
  }
}
