import 'package:flavour_fusion/Views/Auth/home_screen.dart';
import 'package:flavour_fusion/Views/Auth/navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Widgets/Auth/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import 'forgotpassword_screen.dart';

class SigninScreen extends StatelessWidget {
  final RoundedLoadingButtonController _signincontroller =
  RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: Text(
                  'Sign In',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AuthTextFields(
                    keyboardType: TextInputType.phone,
                    labelText: 'Phone',
                    obscureText: false,
                    icon: FontAwesomeIcons.phone,
                    sizeAll: 16,
                    sicon: Icons.done,
                    siconcolor: Colors.deepOrange),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AuthTextFields(
                    keyboardType: TextInputType.text,
                    labelText: 'Password',
                    obscureText: true,
                    icon: FontAwesomeIcons.lock,
                    sizeAll: 16,
                    sicon: Icons.visibility_off_outlined,
                    siconcolor: Colors.grey),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,right: 10),
                    child: Icon(Icons.check_box_outline_blank_outlined),
                  ),
                  ),
                  Text('Remember me',style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 115),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            PageTransition(
                                child: ForgotPassword(),
                                type: PageTransitionType.fade));
                      },
                      child: Text('Forgot Password?',style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey
                      ),),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(25),
                child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    color: Colors.deepOrange,
                    controller: _signincontroller ,
                    onPressed: () {
                      Navigator.pushReplacement(context, PageTransition(child: NavigatonBar(), type: PageTransitionType.fade));
                    },
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color(0xff203142),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              child: SignupScreen(),
                              type: PageTransitionType.fade));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
