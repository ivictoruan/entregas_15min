import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class CustomLine extends StatelessWidget {
  final String text;
  const CustomLine({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(5),
            child: Row(
              children: const [
                 Text(
                  "Todos",
                  style: TextStyle(
                      color: grey, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                      size: 18, color: grey),
                  // onPressed: () {},
                // ),
              ],
            ),            
          ),
        ],
      ),
    );
  }
}