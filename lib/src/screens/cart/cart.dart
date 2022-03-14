import 'package:entregas_15min/src/widgets/action_button.dart';
import 'package:flutter/material.dart';

import '../../json/constant.dart';
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
          // CART PRODUCTS cartList(user)
          Column(
            children: List.generate(
              2,
              (index) {
                return CartProduct(
                  cartList: cartList,
                  index: index,
                );
              },
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(10),
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
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Entrega", style: TextStyle(fontSize: 16)),
                  Text("Padrão - Free", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          ActionButton(
            text: "COMPRE POR R\$ XX,YY",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
