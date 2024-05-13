import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/payment_methods.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Auth/splash_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flavour_fusion/Views/Widgets/DeliverTo/address_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'forgotpassword_screen.dart';

class DeliverScreen extends StatefulWidget {
  @override
  State<DeliverScreen> createState() => _DeliverScreenState();
}

class _DeliverScreenState extends State<DeliverScreen> {
  int _value = 0;
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
                children: [
                  GestureDetector(child: Icon(Icons.arrow_back_ios, color: Colors.black),onTap: (){
                    Navigator.pop(context);
                  },),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Deliver To',
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
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddressCard(
                            imgSource: 'assets/images/home.jpg',
                            titletext: 'Home',
                            subText: 'Swallow Drive,\nHebburn,\nNE31 1AE'),
                        Radio(
                            value: 0,
                            activeColor: Colors.deepOrange,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddressCard(
                            imgSource: 'assets/images/office.jpg',
                            titletext: 'My Office',
                            subText: 'Station Road, Hebburn,\nTyne and Wear,\nNE31 1AA'),
                        Radio(
                            value: 1,
                            activeColor: Colors.deepOrange,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddressCard(
                            imgSource: 'assets/images/appartment.jpg',
                            titletext: 'My Apartment',
                            subText: 'Mill cress 26,\nHebburn,\nA185'),
                        Radio(
                            value: 2,
                            activeColor: Colors.deepOrange,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Add new address',style:  GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      ),
                    ),
                    Container(
                      decoration:
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrange,
                      ),
                      child: Icon(Icons.add,color: Colors.white,size: 50,),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: Payment(), type: PageTransitionType.fade));
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrange
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Center(
                      child: Text(
                        'Apply',style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
