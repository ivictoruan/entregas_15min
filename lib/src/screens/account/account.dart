import 'package:entregas_15min/src/screens/store/widgets/custom_line_divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../json/constant.dart';
import '../../theme/colors.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    // final bool _isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0; AO SUBIR, FAZER COM QUE A APPBAR SEJA UMA ROW (PEDISOS, MEU ENDEREÇO...) 
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
          Row(
            children: [
              // IMAGE
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(profileUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // NAME + SINCE + EDIT ACCOUNT
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NAME
                  const Text(
                    "Daniel",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                        letterSpacing: 1),
                  ),
                  const SizedBox(height: 10),
                  // SINCE
                  Text(
                    "Membro desde 2021",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: black.withOpacity(0.7)),
                  ),
                  const SizedBox(height: 10),
                  // EDIT ACCOUNT
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 160,
                      height: 45,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "EDITAR CONTA",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              letterSpacing: 0.8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // icons + text
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.box,
                        color: black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Pedidos",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        color: black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Meu Endereço",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.cog,
                        color: black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Configurações",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Divider(
            thickness: 1,
            color: black.withOpacity(0.1),
          ),
          // accountList
          const SizedBox(height: 5),
          Column(
              children: List.generate(
                accountList.length,
                (index) => CustomLineDivider(text: accountList[index]),
              ),
          ),
        ],
      ),
    );
  }
}

// Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               InkWell(
//                 onTap: () {},
//                 child: Row(
//                   children: const [
//                     Icon(
//                       FontAwesomeIcons.box,
//                       color: black,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       "Pedidos",
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                           letterSpacing: 0.8),
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {},
//                 child: Row(
//                   children: const [
//                     Icon(
//                       FontAwesomeIcons.mapMarkerAlt,
//                       color: black,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       "Meu Endereço",
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                           letterSpacing: 0.8),
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {},
//                 child: Row(
//                   children: const [
//                     Icon(
//                       FontAwesomeIcons.cog,
//                       color: black,
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       "Configurações",
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                           letterSpacing: 0.8),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
