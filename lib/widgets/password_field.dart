import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_minded/utils/color_utils.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final TextEditingController passwordEditingCtrl;
  final void Function(String) onChanged;

  PasswordField({
    @required this.label,
    this.passwordEditingCtrl,
    this.onChanged,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  void _togglePassword() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: GoogleFonts.firaSans()),
        SizedBox(height: 6),
        TextField(
          style: GoogleFonts.firaSans(color: primaryMain),
          controller: widget.passwordEditingCtrl,
          onChanged: widget.onChanged,
          obscureText: _isObscured,
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
            suffixIcon: IconButton(
              icon: Icon(_isObscured
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined),
              color: primaryMain,
              onPressed: _togglePassword,
            ),
          ),
        ),
      ],
    );
  }
}
