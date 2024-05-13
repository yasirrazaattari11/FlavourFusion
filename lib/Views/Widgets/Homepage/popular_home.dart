import 'package:flavour_fusion/Views/Auth/cart_screen.dart';
import 'package:flavour_fusion/Views/Auth/navigator_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../Auth/verification_screen.dart';

class PopularWidgets extends StatelessWidget {
  final String imagesource;
  final String mainText;
  final String subText;
  final String price;
  PopularWidgets(
      {required this.imagesource,
      required this.mainText,
      required this.subText,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(imagesource),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            mainText,
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Text(
            subText,
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                price,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                width: 75,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: NavigatonCart(),
                          type: PageTransitionType.fade),
                    );
                  },
                  child: Icon(
                    FontAwesomeIcons.cartShopping,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
