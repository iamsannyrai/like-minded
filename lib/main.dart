import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:like_minded/utils/color_utils.dart';

import 'features/registration/registration_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Like Minded',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        cursorColor: primaryMain,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AccountCreationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
