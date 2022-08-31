import 'package:flutter/material.dart';
import 'package:tokoto/screens/sign_in/component/SignIn_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign in',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SignIn_body(),
    );
  }
}
