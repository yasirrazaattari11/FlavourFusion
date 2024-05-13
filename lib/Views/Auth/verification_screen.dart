import 'dart:async';

import 'package:flavour_fusion/Views/Auth/home_screen.dart';
import 'package:flavour_fusion/Views/Auth/navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
class VerificationCode extends StatefulWidget {
  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  final RoundedLoadingButtonController _verifycontroller =
  RoundedLoadingButtonController();

  FocusNode one = FocusNode();

  FocusNode two = FocusNode();

  FocusNode three = FocusNode();

  FocusNode four = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: Text('Verify Your Account',style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Text('We have sent 4 digit code to your phone',style: GoogleFonts.poppins(
              fontSize: 16,
            ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50,),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: TextFormField(
                      focusNode: one,
                      onFieldSubmitted: (value){
                        FocusScope.of(context).requestFocus(two);
                         },

                      cursorColor: Colors.deepOrange,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: TextFormField(
                      focusNode: two,
                      onFieldSubmitted: (value){
                        FocusScope.of(context).requestFocus(three);
                      },
                      cursorColor: Colors.deepOrange,

                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: TextFormField(
                      focusNode: three,
                      onFieldSubmitted: (value){
                        FocusScope.of(context).requestFocus(four);
                      },
                      cursorColor: Colors.deepOrange,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: TextFormField(
                      focusNode: four,
                      cursorColor: Colors.deepOrange,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                color: Colors.deepOrange,
                controller: _verifycontroller ,
                onPressed: () {
                  Timer(Duration(seconds: 3), () {
                    _verifycontroller.success();
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: NavigatonBar(), type: PageTransitionType.fade),
                    );
                  });
                },
                child: Text(
                  "Verify",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
