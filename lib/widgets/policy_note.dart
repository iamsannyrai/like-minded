import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_minded/utils/color_utils.dart';

class PolicyNote extends StatelessWidget {
  const PolicyNote();

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By clicking below, you agree to our ',
        style: GoogleFonts.firaSans(color: primaryDark),
        children: [
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(color: primaryMain, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(color: primaryDark),
          ),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyle(color: primaryMain, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
