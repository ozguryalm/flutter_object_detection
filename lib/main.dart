import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'page_splash.dart';


List<CameraDescription> ?cameras;

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ÖZDAR NESNE TANIMA',

      home: MySplashPage(),
    );
  }
}


