import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CardDetailRow extends StatelessWidget {
  final String type;
  final Icon icon;
  final String val;
  final Color clr;
  CardDetailRow(
      {required this.type,
        required this.icon,
        required this.val,
        required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              type,
              style: GoogleFonts.nunito(),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: val == 'Not Currently Set' ? Colors.red : Colors.black
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