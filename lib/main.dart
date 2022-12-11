import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/bottomnavigatiobar.dart';
import 'package:page_transition/page_transition.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/statistics.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'data/model/add_date.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Text('mono', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
        backgroundColor: Colors.teal,
        nextScreen: LogInScreen (),
      splashIconSize: 250,
      // duration: 4000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
