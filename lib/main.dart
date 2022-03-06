import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'entregas15min_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const Entregas15minApp());
}
