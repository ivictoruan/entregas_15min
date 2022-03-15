import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SmallActionButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color? color;

  const SmallActionButton(
      {Key? key, required this.text, required this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          color: color ?? black,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            // borda preta!
            color: color == white ? black : white,
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: accent.withOpacity(0.6), // psicodelia
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: color == white ? black : white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
