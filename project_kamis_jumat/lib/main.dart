import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:project_kamis_jumat/murojaah_pasca_ramadhan/projectMurojaah/project.dart';
// import 'package:project_kamis_jumat/murojaah_pasca_ramadhan/murojaah.dart';
// import 'package:project_kamis_jumat/projectJumat/home.dart';
// import 'package:project_kamis_jumat/projectKamis/project_kamis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Icons.home,
        nextScreen: Project(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}
