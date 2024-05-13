import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../Auth/verification_screen.dart';
class MealHome extends StatelessWidget {
  final String imgSource;
  final String mainText;
  final String subText;
  final Widget widget;
  MealHome({required this.imgSource,required this.mainText,required this.subText,required this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(imgSource),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mainText,style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),),
                      Text(subText,style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange),
                    child: GestureDetector(
                      child: Icon(
                        FontAwesomeIcons.arrowRight,
                        color: Colors.white,
                      ),
                      onTap: (){
                        Navigator.push(context, PageTransition(child: widget, type: PageTransitionType.fade));
                      },
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
