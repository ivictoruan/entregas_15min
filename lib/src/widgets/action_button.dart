import 'package:flutter/material.dart';

import '../theme/colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const ActionButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(2),
          boxShadow:  [
            BoxShadow(
              color:accent.withOpacity(0.6), // psicodelia
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
              style: const TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
