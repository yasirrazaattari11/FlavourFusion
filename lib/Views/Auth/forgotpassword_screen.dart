import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../Widgets/Auth/text_fields.dart';
class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _passwordcontroller =
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
                  'Forgot Password',
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    "Please enter your email address. You will receive a link to create a new password via email.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),
              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AuthTextFields(
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Email',
                    obscureText: false,
                    icon: Icons.alternate_email,
                    sizeAll: 16,
                    sicon: Icons.close,
                    siconcolor: Colors.red),
              ),
              SizedBox(height: 30,),
               Padding(
                padding: const EdgeInsets.all(25),
                child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                color: Colors.deepOrange,
                controller: _passwordcontroller ,
                onPressed: () {},
                child: Text(
                  "Send",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                )),
               ),
            ],
          ),
        ),

      ),
    );
  }
}
