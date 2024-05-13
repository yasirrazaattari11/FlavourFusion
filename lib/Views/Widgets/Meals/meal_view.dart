import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MealView extends StatelessWidget {
  bool flagA = false;
  bool flagB = false;
  bool flagC = false;
  final String image;
  final String foodTitle;
  MealView({required this.image,required this.foodTitle, required this.flagA, required this.flagB, required this.flagC});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(image),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Text(
              foodTitle,
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: flagA == true ? 12: 10,
                  width: flagA == true ? 18:10,
                  decoration: BoxDecoration(
                      color: flagA==true ? Colors.deepOrange:Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: flagB == true ? 12: 10,
                  width: flagB == true ? 18:10,
                  decoration: BoxDecoration(
                      color: flagB==true ? Colors.deepOrange:Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: flagC == true ? 12: 10,
                  width: flagC == true ? 18:10,
                  decoration: BoxDecoration(
                      color: flagC==true ? Colors.deepOrange:Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
