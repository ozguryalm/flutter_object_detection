import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'page_home.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({Key? key}) : super(key: key);

  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      durationInSeconds: 4,
      navigator:const HomePage(),
     // backgroundImage: Image.asset("assets/fu_logo.png").image,
      showLoader: true,
      loaderColor: Colors.pink,
      loadingText: const Text(
        "loading...",
        style: TextStyle(color: Colors.white),
      ),
      logo: const Image(
        image: AssetImage("assets/fu_logo.png"),
      ),
    );
  }
}
