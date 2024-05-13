import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CardType extends StatelessWidget {
  final String imgSource;
  final String cardType;
  double? imgsize;
  CardType({required this.imgSource,required this.cardType,this.imgsize});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xfff7f7f7)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(imgSource,),height: imgsize,width: imgsize,),
          Text(cardType,style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.black
          ),)
        ],
      ),
    );
  }
}
