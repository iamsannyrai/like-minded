import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_minded/utils/color_utils.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color disabledColor;
  final VoidCallback onPressed;

  CustomButton({
    this.label,
    this.color = primaryMain,
    this.disabledColor = primaryLightest,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: RaisedButton(
              color: color,
              disabledColor: disabledColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                label ?? 'Custom Button',
                style: GoogleFonts.firaSans(
                  color: onPressed != null ? Colors.white : primaryMain,
                ),
              ),
              onPressed: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
