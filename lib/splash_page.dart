import 'package:chemistry_app/main.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'chem.png',
        alignment: Alignment.center,
      ),
      logoWidth: 200,
      backgroundColor: Colors.white,
      showLoader: true,
      loaderColor: Colors.purple,
      loadingText: const Text(
        "Loading...",
        style: TextStyle(
          color: Color.fromARGB(255, 143, 4, 181),
        ),
      ),
      durationInSeconds: 3,
      navigator: const MyHomePage(),
    );
  }
}
