import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_minded/utils/color_utils.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController textEditingCtrl;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  final void Function(String) onChanged;

  CustomTextField(
      {@required this.label,
      this.textEditingCtrl,
      this.textInputType,
      this.textCapitalization = TextCapitalization.none,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: GoogleFonts.firaSans()),
        SizedBox(height: 6),
        TextField(
          style: GoogleFonts.firaSans(color: primaryMain),
          controller: textEditingCtrl,
          keyboardType: textInputType ?? TextInputType.text,
          textCapitalization: textCapitalization,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 0,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: primaryDark),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: primaryMain),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
          ),
        ),
      ],
    );
  }
}
