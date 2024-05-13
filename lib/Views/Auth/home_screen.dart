import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flavour_fusion/Views/Auth/NavigatonFourth.dart';
import 'package:flavour_fusion/Views/Auth/cart_screen.dart';
import 'package:flavour_fusion/Views/Auth/forgotpassword_screen.dart';
import 'package:flavour_fusion/Views/Auth/mealB_screen.dart';
import 'package:flavour_fusion/Views/Auth/navigator_popular.dart';
import 'package:flavour_fusion/Views/Auth/popular_screen.dart';
import 'package:flavour_fusion/Views/Auth/profile_view.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Auth/splash_screen.dart';
import 'package:flavour_fusion/Views/Auth/subscribem_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flavour_fusion/Views/Widgets/Homepage/meal_home.dart';
import 'package:flavour_fusion/Views/Widgets/Homepage/popular_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'mealA_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Welcome, John ',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            'assets/images/handwave.png',
                            filterQuality: FilterQuality.high,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Let's find lunch ",
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              'near you',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Stack(children: [
                          Container(
                            child: Container(
                              child: CircularProfileAvatar(
                                '',
                                backgroundColor: Colors.lightBlue,
                                borderWidth: 1,
                                borderColor: Colors.deepOrange,
                                elevation: 20,
                                radius: 45,
                                cacheImage: true,
                                errorWidget: (context, url, error) {
                                  return Icon(
                                    Icons.face,
                                    size: 50,
                                  );
                                },
                                onTap: () {},
                                animateFromOldImageOnUrlChange: true,
                                placeHolder: (context, url) {
                                  return Container(
                                    child: Center(child: CircularProgressIndicator()),
                                  );
                                },
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: NavigatonFourth(),
                                            type: PageTransitionType.fade));
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                ],
              ),
            ),
          ),
          Expanded(flex: 6,
              child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: NavigatonPopular(),
                                          type: PageTransitionType.fade));
                                },
                                child: Text(
                                  'All',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PopularWidgets(
                                  imagesource: 'assets/images/chicken.jpg',
                                  mainText: 'Chicken Grilled',
                                  subText: 'Chicken, Rice',
                                  price: '550 PKR'),
                              SizedBox(
                                width: 10,
                              ),
                              PopularWidgets(
                                  imagesource: 'assets/images/noodles.jpg',
                                  mainText: 'Chicken Noodles',
                                  subText: 'Mint, Noodles',
                                  price: '250 PKR'),
                              SizedBox(
                                width: 10,
                              ),
                              PopularWidgets(
                                  imagesource: 'assets/images/pizzav.jpg',
                                  mainText: 'Vegan Pizza',
                                  subText: 'Pizza, Vegetable',
                                  price: '750 PKR')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Meal Sets',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            MealHome(
                              imgSource: 'assets/images/mealA.jpg',
                              mainText: 'Meal A',
                              subText: 'Breakfast, juice',
                              widget: MealAScreen(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MealHome(
                              imgSource: 'assets/images/mealB.jpg',
                              mainText: 'Meal B',
                              subText: 'Eggs, Fruits',
                              widget: MealBScreen(),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ))


        ],
      ),
    );
  }
}
