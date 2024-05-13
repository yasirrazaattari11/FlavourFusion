import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/home_screen.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Auth/splash_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flavour_fusion/Views/Widgets/Popular/popular_cards.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'forgotpassword_screen.dart';

class PopularScreen extends StatefulWidget {

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  Widget currentScreen = PopularScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                GestureDetector(onTap: (){
                 Navigator.pop(context);
                },
                    child: Icon(Icons.arrow_back_ios, color: Colors.black)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Popular',
              style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 10)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                    suffixIcon: Icon(Icons.key_rounded),
                    hintText: "Search",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    PopularCards(
                        imgSource: 'assets/images/chicken.jpg',
                        titletext: 'Chicken Grilled',
                        subText: 'Chicken Rice',
                        price: '550 PKR'),
                    SizedBox(height: 20,),
                    PopularCards(
                        imgSource: 'assets/images/noodles.jpg',
                        titletext: 'Chicken Noodles',
                        subText: 'Mint, Noodles',
                        price: '250 PKR'),
                    SizedBox(height: 20,),
                    PopularCards(
                        imgSource: 'assets/images/pizzav.jpg',
                        titletext: 'Vegan Pizza',
                        subText: 'Pizza, vegetable',
                        price: '750 PKR'),
                    SizedBox(height: 20,),
                  ],
                ),
              ),),
        ],
      ),
    );
  }
}
