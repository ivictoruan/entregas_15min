import 'package:entregas_15min/src/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartProduct extends StatefulWidget {
  // final List product;
  const CartProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Container(
                  width: 150,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: black,
                    // image: DecorationImage(
                    //   image: NetworkImage(
                    //      "${widget.product["img"]}"
                    //   ),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ),
              // TEXT WITH CART INFORMATION
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nome do Produto",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 0.8),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Ref 4546554465",
                      style: TextStyle(
                        color: grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "S",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 0.8),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          "R\$ 40",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              letterSpacing: 0.8),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.minus,
                              size: 12, color: black.withOpacity(0.5)),
                        ),
                        const Text(
                          "1",
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.plus,
                              size: 12, color: black.withOpacity(0.5)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), 
            ],
          ),
        ],
      ),
    );
  }
}
