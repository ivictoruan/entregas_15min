import 'package:entregas_15min/src/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../json/constant.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
          // Location + Icon
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "São Luís",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 5),
                  Icon(FontAwesomeIcons.mapMarkerAlt, size: 20),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          // find all stores here (Encontre todas nossas lojas aqui)
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Encontre todas \nnossas lojas aqui",
                style: TextStyle(
                    fontSize: 30, height: 1.5, fontWeight: FontWeight.w400)),
          ),
          const SizedBox(height: 40),
          // SEARCH + ICON
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 25, right: 20),
                  // width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    cursorColor: primary,
                    decoration: InputDecoration(                      
                      hintText: "Buscar",
                      hintStyle: const TextStyle(fontSize: 16),
                      prefixIcon: Icon(
                        FontAwesomeIcons.plus,
                        size: 12,
                        color: black.withOpacity(0.8),
                      ),
                      suffixIcon: const Icon(FontAwesomeIcons.search,
                          color: black, size: 16),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: const CircleAvatar(
                  backgroundColor: black,
                  child: Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    size: 20,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Divider(
            color: grey.withOpacity(0.4),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Todas as lojas",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 20),
          Column(
            children: List.generate(
              storeList.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      // padding: const EdgeInsets.only(left: 10),
                      width: 350,
                      height: 180,
                      child: Stack(
                        children: [
                          // IMAGE
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  storeList[index]["img"],
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          // OPACITY
                          Container(
                            decoration: BoxDecoration(
                              color: black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          // BOX WITH (OPEN/CLOSE)
                          Positioned(
                            right: 10,
                            top: 20,
                            child: Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    // "OPEN",
                                    storeList[index]["open"] == 1
                                        ? "OPEN"
                                        : "CLOSE",
                                    style: const TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  CircleAvatar(
                                    backgroundColor:
                                        storeList[index]["open"] == 1
                                            ? Colors.green
                                            : Colors.red,
                                    radius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ICON + TEXT (DOWN)
                          Positioned(
                            bottom: 15,
                            left: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.mapMarkerAlt,
                                  size: 18,
                                  color: white,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  storeList[index]["name"],
                                  style: const TextStyle(
                                      fontSize: 15, color: white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
