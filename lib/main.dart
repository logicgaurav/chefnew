// @dart=2.9
import 'dart:async';
import 'package:chefbox/signup.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        routes: {
          '/signup': (context) => Signup(),
          // '/forgot': (context) => Forgot(),
          // '/account': (context) => Account(),
          // '/accept': (context) => Accept(),
        },
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Padding(
            padding: const EdgeInsets.all(78.0),
            child: Image.asset(
              'images/hmm.png',
            ),
          ),
          nextScreen: MyHomePage(),
          splashIconSize: double.maxFinite,
           centered: true,
          splashTransition: SplashTransition.rotationTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.amber,
          // duration: 300,
        ),
      );
    });
  }
}

class HolaPage {}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       AnimatedSplashScreen(
          splash: Padding(
            padding: const EdgeInsets.all(78.0),
            child: Image.asset(
              'images/hmm.png',
            ),
          ),
          nextScreen: Signup(),
          splashIconSize: double.maxFinite,
           centered: true,
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.white,
          duration: 100,
      
      ),
    );
  }
}
