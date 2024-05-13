import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PopularCards extends StatelessWidget {
final String imgSource;
final String titletext;
final String subText;
final String price;
PopularCards({required this.imgSource,required this.titletext, required this.subText, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(imgSource),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titletext,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subText,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                price,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrange),
                textAlign: TextAlign.justify,
              )
            ],
          )
        ],
      ),
    );
  }
}
