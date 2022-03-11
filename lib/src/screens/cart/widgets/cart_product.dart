import 'package:entregas_15min/src/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({Key? key}) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Positioned(
          left:5,
          child: Icon(
            FontAwesomeIcons.plus,
            color: grey,
            size: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: black,
              // image: DecorationImage(
              //   image: AssetImage('assets/images/product.png'),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        ),
      ],
    );
  }
}
