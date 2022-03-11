import 'package:flutter/material.dart';

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
    return ListView(
      children: const [
        // List.generate(length, (index) => null)
        CartProduct(),

      ],
    );
  }
}
