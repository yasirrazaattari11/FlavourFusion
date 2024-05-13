import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthSignUpFields extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final IconData icon;
  final double sizeAll;

  AuthSignUpFields(
      {required this.keyboardType,
        required this.labelText,
        required this.obscureText,
        required this.icon,
        required this.sizeAll,
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: sizeAll),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Color(0xfff7f7f7),
        filled: true,

        prefixIcon: Icon(
          icon,
          size: sizeAll,
        ),
        prefixIconColor: Colors.grey,
        label: Text(
          labelText,
        ),
        labelStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
