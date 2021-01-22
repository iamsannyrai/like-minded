import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:like_minded/utils/color_utils.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Like Minded',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AccountCreationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AccountCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', height: 50),
                SizedBox(width: 6),
                SvgPicture.asset('assets/svgs/logo-text.svg', height: 40),
              ],
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Create your',
                      style: TextStyle(fontSize: 25, color: primaryMain),
                    ),
                    TextSpan(
                      text: '\nConnection',
                      style: TextStyle(
                          color: primaryDark,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // form fields
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),
                  SizedBox(height: 6),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: primaryDark),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: primaryMain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  // email
                  Text('Email'),
                  SizedBox(height: 6),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: primaryDark),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: primaryMain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  // password
                  Text('Password'),
                  SizedBox(height: 6),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: primaryDark),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: primaryMain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        color: Color(0xffDFDEFD),
                        onPressed: () {
                          print('hide');
                        },
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  // privacy policy
                  RichText(
                    text: TextSpan(
                      text: 'By clicking below, you agree to our ',
                      style: TextStyle(color: primaryDark),
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                              color: primaryMain, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(color: primaryDark),
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                              color: primaryMain, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // register button
                  Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          color: primaryMain,
                          child: Text(
                            'Create Account',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // already connected
                  GestureDetector(
                    child: RichText(
                      text: TextSpan(
                        text: 'Already connected? ',
                        style: TextStyle(color: primaryDark),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              color: primaryMain,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      //TODO
                      print('login');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
