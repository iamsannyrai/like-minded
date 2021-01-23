import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/logo.dart';
import '../../utils/color_utils.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/password_field.dart';
import '../../widgets/policy_note.dart';
import '../../widgets/custom_button.dart';

class AccountCreationPage extends StatefulWidget {
  @override
  _AccountCreationPageState createState() => _AccountCreationPageState();
}

class _AccountCreationPageState extends State<AccountCreationPage> {
  TextEditingController _usernameCtrl, _emailCtrl, _passwordCtrl;

  @override
  void initState() {
    super.initState();
    _usernameCtrl = TextEditingController()..addListener(_usernameListener);
    _emailCtrl = TextEditingController()..addListener(_emailListener);
    _passwordCtrl = TextEditingController()..addListener(_passwordListener);
  }

  @override
  void dispose() {
    super.dispose();
    _usernameCtrl.dispose();
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
  }

  void _usernameListener() {
    setState(() {});
  }

  void _emailListener() {
    setState(() {});
  }

  void _passwordListener() {
    setState(() {});
  }

  bool _isValid() {
    return _usernameCtrl.text.isNotEmpty &&
        _passwordCtrl.text.isNotEmpty &&
        _emailCtrl.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            const SizedBox(height: 50),
            const AppLogo(),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Create your',
                      style: GoogleFonts.firaSans(
                        fontSize: 25,
                        color: primaryMain,
                      ),
                    ),
                    TextSpan(
                      text: '\nConnection',
                      style: GoogleFonts.firaSans(
                        fontSize: 25,
                        color: primaryDark,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomTextField(
                    label: 'Name',
                    textEditingCtrl: _usernameCtrl,
                    textCapitalization: TextCapitalization.words,
                  ),
                  const SizedBox(height: 14),
                  CustomTextField(
                    label: 'Email',
                    textInputType: TextInputType.emailAddress,
                    textEditingCtrl: _emailCtrl,
                  ),
                  const SizedBox(height: 14),
                  PasswordField(
                    label: 'Password',
                    passwordEditingCtrl: _passwordCtrl,
                  ),
                  const SizedBox(height: 16),
                  const PolicyNote(),
                  const SizedBox(height: 16),
                  CustomButton(
                    label: 'Create Account',
                    onPressed: _isValid()
                        ? () {
                            print('account created');
                          }
                        : null,
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    child: RichText(
                      text: TextSpan(
                        text: 'Already connected? ',
                        style: GoogleFonts.firaSans(color: primaryDark),
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
                      // TODO navigate to another login screen
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
