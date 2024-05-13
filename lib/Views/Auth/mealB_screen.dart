import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/cartaddition.dart';
import 'package:flavour_fusion/Views/Auth/cartadditionmealbmain.dart';
import 'package:flavour_fusion/Views/Auth/cartaddmealbdessert.dart';
import 'package:flavour_fusion/Views/Auth/delivery_screen.dart';
import 'package:flavour_fusion/Views/Auth/navigator_popular.dart';
import 'package:flavour_fusion/Views/Auth/popular_screen.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Auth/splash_screen.dart';
import 'package:flavour_fusion/Views/Auth/subscribew_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:readmore/readmore.dart';

import '../Widgets/Meals/meal_buttons.dart';
import '../Widgets/Meals/meal_type.dart';
import '../Widgets/Meals/meal_view.dart';
import 'cart_screen.dart';
import 'forgotpassword_screen.dart';

class MealBScreen extends StatefulWidget {
  @override
  State<MealBScreen> createState() => _MealBScreenState();
}

class _MealBScreenState extends State<MealBScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      child: Icon(Icons.arrow_back_ios, color: Colors.black),onTap: (){
                        Navigator.pop(context);
                  },),
                  GestureDetector(child: Icon(FontAwesomeIcons.heart, color: Colors.black),onTap: (){
                    Navigator.push(context, PageTransition(child: NavigatonPopular(), type: PageTransitionType.fade));
                  },),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Meal B',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                'Ideal meals for office workers',
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MealView(
                          image: 'assets/images/mealBstarter.jpg',
                          foodTitle: 'Omelet with Salad',
                          flagA: true,
                          flagB: false,
                          flagC: false),
                      SizedBox(
                        width: 20,
                      ),
                      MealView(
                          image: 'assets/images/mealB.jpg',
                          foodTitle: 'Omelet with Water melon',
                          flagA: false,
                          flagB: true,
                          flagC: false),
                      SizedBox(
                        width: 20,
                      ),
                      MealView(
                          image: 'assets/images/mealBdessert.jpg',
                          foodTitle: 'Omelet with Orange ',
                          flagA: false,
                          flagB: false,
                          flagC: true),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Description',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: ReadMoreText(
                  'Indulge in a perfect morning harmony with a fluffy omelet, a creation of gently whisked eggs embracing a medley of your favorite fillings, sizzling and golden in the pan. Pair it with the refreshing juiciness of watermelon slices, a vibrant burst of summer encapsulated in every bite, creating a breakfast duo that balances savory delight with sweet refreshment.',
                  trimLines: 3,
                  textAlign: TextAlign.justify,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read More',
                  trimExpandedText: 'Show Less',
                  lessStyle: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.deepOrange),
                  moreStyle: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.deepOrange),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                GestureDetector(
                  child: MealType(
                      mainText: 'Starter',
                      subtext: 'Omelet with Salad',
                      image: 'assets/images/mealBstarter.jpg',
                      price: '150 PKR'),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: CartMealBType(),
                            type: PageTransitionType.fade));
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: MealType(
                      mainText: 'Main Course',
                      subtext: 'Omelet with Water melon',
                      image: 'assets/images/mealB.jpg',
                      price: '150 PKR'),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: CartMealBMain(),
                            type: PageTransitionType.fade));
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: MealType(
                      mainText: 'Dessert',
                      subtext: 'Omelet wit oranges',
                      image: 'assets/images/mealBdessert.jpg',
                      price: '150 PKR'),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: CardMealBDessert(),
                            type: PageTransitionType.fade));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Total Price',
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '450 PKR',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Orders are accepted:',
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'MON - SAT',
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonMeal(
                      widget: DeliverScreen(),
                      title: '  Order  ',
                      btn_color: Colors.deepOrange),
                  SizedBox(
                    width: 15,
                  ),
                  ButtonMeal(
                      widget: SubscribeWeek(),
                      title: 'Subscribe',
                      btn_color: Colors.grey),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4.9',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 27),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.fireFlameSimple,
                      color: Colors.red,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '443 g.',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '|',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '158 kcal',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.clock,
                      color: Colors.lightBlue,
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '8-12 min',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/chef.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Cook',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Cooking is the art of\n transforming ingredients\n into delicious experiences.\n It's a symphony of flavors\n orchestrated with skill\n and creativity.",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
