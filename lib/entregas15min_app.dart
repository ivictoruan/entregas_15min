import 'package:flutter/material.dart';

import 'src/screens/root_app.dart';

class Entregas15minApp extends StatelessWidget {
  const Entregas15minApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entregas15min",
      home: const RootApp(),
      theme: ThemeData(
        // primaryColor: Colors.grey,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.grey,
            ),
      ),
    );
  }
}
