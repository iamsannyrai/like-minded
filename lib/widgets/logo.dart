import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/logo.png', height: 50),
        SizedBox(width: 6),
        SvgPicture.asset('assets/svgs/logo-text.svg', height: 40),
      ],
    );
  }
}
