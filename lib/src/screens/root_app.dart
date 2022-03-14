import 'package:entregas_15min/src/json/constant.dart';
import 'package:entregas_15min/src/screens/account/account.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'cart/cart.dart';
import 'home/home.dart';
import 'more/more.dart';
import 'store/store.dart';

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
          Home(),
          Store(),
          Account(),
          Cart(),
          More(),
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
            style: TextStyle(color: black, letterSpacing: 0.8),
          ),
        );
      case 3:
        return AppBar(
          elevation: 0.4,
          backgroundColor: white,
          centerTitle: true,
          title: const Text(
            "CARRINHO",
            style: TextStyle(color: black, letterSpacing: 0.8),
          ),
        );
      case 4:
        return AppBar(
          elevation: 0.4,
          backgroundColor: white,
          centerTitle: true,
          title: const Text(
            "MAIS",
            style: TextStyle(color: black, letterSpacing: 0.8),
          ),
        );
    }
  }

  Widget getFooter() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          color: white,
          border: Border(
              top: BorderSide(
            color: grey.withOpacity(0.4),
          ))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
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
