import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class CustomLineDivider extends StatelessWidget {
  final String text;
  const CustomLineDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 5),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.8,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  color: black.withOpacity(0.6),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Divider(
              thickness: 1.5,
              color: black.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
