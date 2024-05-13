import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flavour_fusion/Views/Auth/delivery_screen.dart';
import 'package:flavour_fusion/Views/Auth/signup_screen.dart';
import 'package:flavour_fusion/Views/Auth/splash_screen.dart';
import 'package:flavour_fusion/Views/Auth/verification_screen.dart';
import 'package:flavour_fusion/Views/Widgets/Payment/card_number.dart';
import 'package:flavour_fusion/Views/Widgets/Payment/card_type.dart';
import 'package:flavour_fusion/Views/Widgets/Payment/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgotpassword_screen.dart';

class Payment extends StatefulWidget {

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                'Payment',
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Delivery Method',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PaymentFields(
                  widget: DeliverScreen(),
                  text: 'Swallow Drive, Hebburn,\nNE31 1AE'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PaymentFields(
                  widget: DeliverScreen(), text: '+1 234 247 2337'),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CardType(
                      imgSource: 'assets/images/creditcard.png',
                      cardType: 'Credit Card'),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                      child: CardType(
                    imgSource: 'assets/images/paypal.png',
                    cardType: 'PayPal',
                    imgsize: 90,
                  )),
                  SizedBox(width: 10,),
                  CardType(imgSource: 'assets/images/debitcard.png', cardType: 'Debit Card')
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
                    color: Color(0xfff7f7f7)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Add New Card',style:  GoogleFonts.poppins(
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CardNumber(cardType: 'Master Card', imgSource: 'assets/images/mastercard.png', cardNumber: '1234'),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CardNumber(cardType: 'Visa', imgSource: 'assets/images/visa.png', cardNumber: '1234'),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      'Check Out',style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
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
