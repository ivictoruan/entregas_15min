import 'package:entregas_15min/src/json/constant.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  //app bar
  AppBar? appbar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar() as PreferredSizeWidget?,
      body: IndexedStack(
        index: activeTab,
        children: const [
          Center(
            child: Text(
              "Home",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Loja",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Contas",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Carrinho",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Outros",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomNavigationBar: getFooter(),
    );
  }

  // ignore: body_might_complete_normally_nullable
  Widget? getAppBar() {
    switch (activeTab) {
      case 0:
        // appbar = null;
        break;
      case 1:
        // appbar = null;
        break;
      case 2:
        return AppBar(
          elevation: 0.4,
          backgroundColor: white,
          centerTitle: true,
          title: const Text(
            "CONTA",
            style: TextStyle(color: black),
          ),
        );
      case 3:
        return AppBar(
          elevation: 0.4,
          backgroundColor: white,
          centerTitle: true,
          title: const Text(
            "COMPRAS",
            style: TextStyle(color: black),
          ),
        );
      case 4:
        return AppBar(
          elevation: 0.4,
          backgroundColor: white,
          centerTitle: true,
          title: const Text(
            "OUTROS",
            style: TextStyle(color: black),
          ),
        );
    }
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: white,
          border: Border(
              top: BorderSide(
            color: grey.withOpacity(0.4),
          ))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(itemsTab.length, (index) {
            return IconButton(
              icon: Icon(
                itemsTab[index]["icon"],
                size: itemsTab[index]["size"],
                color: activeTab == index
                    ? accent
                    : black, // se o index for igual ao icon clicado, muda de cor
              ),
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
