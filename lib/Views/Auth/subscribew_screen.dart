import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/home_screen.dart';
import 'package:flavour_fusion/Views/Auth/navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Auth/splash_screen.dart';
import 'package:flavour_fusion/Views/Auth/subscribem_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'forgotpassword_screen.dart';
class SubscribeWeek extends StatefulWidget {

  @override
  State<SubscribeWeek> createState() => _SubscribeWeekState();
}

class _SubscribeWeekState extends State<SubscribeWeek> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                'Subscribe',
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Weekly',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: FlutterSwitch(
                    value: status,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                        Navigator.pushReplacement(context, PageTransition(child: SubscriptionScreen(), type: PageTransitionType.fade));
                      });
                    },
                    width: 80,
                    height: 35,
                    valueFontSize: 25,
                    toggleSize: 33,
                    borderRadius: 30,
                    padding: 8,
                    activeColor: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Monthly',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets/images/arrowweek.png',color: Colors.deepOrange,),
                ),
                SizedBox(width: 20,),
                Text('Save up to 50%', style:  GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.deepOrange
                ),),

              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text('1050 PKR', style: GoogleFonts.poppins(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.deepOrange
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text('525 PKR', style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Paid Weekly', style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(child: NavigatonBar(), type: PageTransitionType.fade));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Text(
                    'Claim Discount',style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
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
