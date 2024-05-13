import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CardNumber extends StatelessWidget {
  final String cardType;
  final String imgSource;
  final String cardNumber;
  CardNumber({required this.cardType,required this.imgSource,required this.cardNumber});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
              color: Colors.black
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(cardType,style: GoogleFonts.poppins(color: Colors.grey),),
            SizedBox(height: 10,),
            Row(
              children: [
                Image(image: AssetImage(imgSource)),
                SizedBox(width: 20,),
                Text('****',style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                ),),
                SizedBox(width: 20,),
                Text(cardNumber,style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                ),)
              ],
            ),
            SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}
