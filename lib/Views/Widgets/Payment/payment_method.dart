import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
class PaymentFields extends StatelessWidget {
  final Widget widget;
  final String text;
  PaymentFields({required this.widget,required this.text});



  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Colors.black
          ),),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, PageTransition(child: widget, type: PageTransitionType.fade));
          }, child: Text('Change',style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.deepOrange
          ),))
        ],
      ),
    );
  }
}
