import 'dart:async';

import 'package:flavour_fusion/Views/Auth/signin_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flavour_fusion/Views/Widgets/Auth/signup_fields.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/Auth/text_fields.dart';

class SignupScreen extends StatelessWidget {
  final RoundedLoadingButtonController _signupcontroller =
  RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              child: Text(
                'Sign Up',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AuthSignUpFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Enter Name',
                    obscureText: false,
                    icon: FontAwesomeIcons.person,
                    sizeAll: 16)),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 335,
                height: 65,

                decoration: BoxDecoration(
                    color: Color(0xfff7f7f7),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: IntlPhoneField(
                      disableLengthCheck: true,
                      dropdownIconPosition: IconPosition.values[1],
                      dropdownIcon: Icon(FontAwesomeIcons.angleDown,color: Colors.grey,),
                      textAlign: TextAlign.left,
                      initialCountryCode: 'PK',
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderSide: BorderSide.none
                       ),
                        labelText: 'Enter Mobile No',
                        labelStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                        floatingLabelBehavior: FloatingLabelBehavior.never,

                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AuthSignUpFields(
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Email Address',
                    obscureText: false,
                    icon: Icons.alternate_email,
                    sizeAll: 16)),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AuthSignUpFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Password',
                    obscureText: false,
                    icon: FontAwesomeIcons.lock,
                    sizeAll: 16)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  'By continuing, I confirm that I have read and agree ',
                  style: GoogleFonts.poppins(color: Colors.black)
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'to the ',
                        style: GoogleFonts.poppins(color: Colors.black)
                      ),
                      TextSpan(
                          text: 'Terms and Conditions ',
                          style: GoogleFonts.poppins(color: Colors.deepOrange)
                      ),
                      TextSpan(
                          text: 'and ',
                          style: GoogleFonts.poppins(color: Colors.black)
                      ),
                      TextSpan(
                          text: 'Privacy Policy.',
                          style: GoogleFonts.poppins(color: Colors.deepOrange)
                      ),
                    ]
                  ),

                ),
              ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Hero(
            tag: 'Auth',
            child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                color: Colors.deepOrange,
                controller: _signupcontroller ,
                onPressed: () {
                  Timer(Duration(seconds: 3), () {
                    _signupcontroller.success();
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: VerificationCode(), type: PageTransitionType.fade),
                    );
                  });
                },
                child: Text(
                  "Sign up",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                )
            ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                SizedBox(width: 156,child: Container(
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                    ,color: Color(0xfff7f7f7),
                  ),
                ),),
                SizedBox(width: 6,),
                Text('OR',style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
                ),),
                SizedBox(width: 6,),
                SizedBox(width: 157,child: Container(
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                      ,color: Color(0xfff7f7f7),
                  ),

                ),),
              ],),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff7f7f7)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/google.png',height: 35,width: 35,),
                      Text(
                        'Continue with Google',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff7f7f7)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/facebook.png',height: 35,width: 35,),
                      Text(
                        'Continue with facebook',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}