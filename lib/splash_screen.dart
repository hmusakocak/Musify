import 'package:application_1/login_register_proccess/login_register.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
          'assets/images/splash_logo.png'),
      title: Text(
        "Hoş Geldiniz!",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xff464646),
      showLoader: true,
      loadingText: Text("Yükleniyor..."),
      navigator: LoginRegister(),
      durationInSeconds: 5,
    );
  }
}
