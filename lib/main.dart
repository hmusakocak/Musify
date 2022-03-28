import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark));
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    );
  }
}
