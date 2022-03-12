import 'package:entregas_15min/src/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../json/constant.dart';
import '../../theme/colors.dart';
import 'widgets/cart_product.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
          // ICON
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    color: black,
                    size: 13,
                  ),
                ),
              ],
            ),
          ),
          // CART PRODUCTS
          Column(
            children: List.generate(
              2,
              (index) {
                return const CartProduct();
              },
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Você tem um código promocional?",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                   Text("Entrega", style: TextStyle(fontSize: 16)),
                   Text("Padrão - Free", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          ActionButton(text: "COMPRE POR R\$ XX,YY", onTap: (){}, ),
        ],
      ),
    );
  }
}
