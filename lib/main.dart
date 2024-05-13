import 'package:flavour_fusion/Views/Auth/cardadditionmealastarter.dart';
import 'package:flavour_fusion/Views/Auth/cart_screen.dart';
import 'package:flavour_fusion/Views/Auth/cartaddition.dart';
import 'package:flavour_fusion/Views/Auth/delivery_screen.dart';
import 'package:flavour_fusion/Views/Auth/forgotpassword_screen.dart';
import 'package:flavour_fusion/Views/Auth/home_screen.dart';
import 'package:flavour_fusion/Views/Auth/mealA_screen.dart';
import 'package:flavour_fusion/Views/Auth/mealB_screen.dart';
import 'package:flavour_fusion/Views/Auth/navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/payment_methods.dart';
import 'package:flavour_fusion/Views/Auth/popular_screen.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Auth/splash_screen.dart';
import 'package:flavour_fusion/Views/Auth/subscribem_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: SplashScreen(),
    );
  }
}


