import 'package:entregas_15min/src/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartProduct extends StatefulWidget {
  final List cartList;
  final int index;
  const CartProduct({
    Key? key,
    required this.cartList,
    required this.index,
  }) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  void addItem() {
    setState(() {});
  }

  void removeItem() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
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
                    // color: black,
                    image: DecorationImage(
                      image: NetworkImage(
                        widget.cartList[widget.index]['img'],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // TEXT WITH CART INFORMATION
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.cartList[widget.index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 0.8),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.cartList[widget.index]['ref'],
                      style: const TextStyle(
                        color: grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.cartList[widget.index]['size'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 0.8),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          widget.cartList[widget.index]['price'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              letterSpacing: 0.8),
                        ),
                        IconButton(
                          onPressed: addItem,
                          icon: Icon(FontAwesomeIcons.minus,
                              size: 12, color: black.withOpacity(0.5)),
                        ),
                        const Text(
                          "1",
                        ),
                        IconButton(
                          onPressed: removeItem,
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
