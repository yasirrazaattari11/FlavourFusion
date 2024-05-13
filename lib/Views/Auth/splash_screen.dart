import 'dart:async';

import 'package:flavour_fusion/Views/Auth/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          PageTransition(child: SigninScreen(), type: PageTransitionType.fade));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash1.jpg'),
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 100,
                  width: 100,
                )),
                Text(
                  'Flavour Fusion',
                  style: GoogleFonts.lobsterTwo(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  'Food Ordering App',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
