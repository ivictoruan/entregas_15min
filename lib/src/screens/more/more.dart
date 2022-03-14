import 'package:entregas_15min/src/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../json/constant.dart';
import '../../widgets/small_action_button.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1616597082843-de7ce757d548?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Daniel",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                      letterSpacing: 1),
                ),
                const SizedBox(height: 5),
                // SINCE
                Text(
                  "${cartList.length} Pedidos",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: grey.withOpacity(0.6)),
                ),
              ],
            )
          ],
        ),
        Divider(
          thickness: 1,
          color: black.withOpacity(0.1),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            menusMore.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30, top: 11, bottom: 11),
                child: Text(
                  menusMore[index],
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.8,
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SmallActionButton(text: "Settings", onTap: (){} ), // botão preto
            SmallActionButton(text: "Sign Out", onTap: (){}, color: white ), // botão branco borda preta
          ],
        ),
      ],
    );
  }
}
