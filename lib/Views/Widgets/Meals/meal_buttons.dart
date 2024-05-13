import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../Auth/cart_screen.dart';
class ButtonMeal extends StatelessWidget {
  final Widget widget;
  final String title;
  final Color btn_color;
  ButtonMeal({required this.widget, required this.title, required this.btn_color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: widget,
                type: PageTransitionType.fade));
      },
      child: Container(
        width:165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: btn_color),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 20),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
