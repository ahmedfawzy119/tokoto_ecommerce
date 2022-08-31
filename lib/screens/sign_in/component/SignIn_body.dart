import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/screens/home/home_screen.dart';
import 'package:tokoto/size_config.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn_body extends StatelessWidget {
  const SignIn_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'sign in with your email and password \nor continue with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SigninForm(),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 30),
                    // padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                      // color: Color(0xFFF5F6F9F),
                      shape: BoxShape.circle,
                    ),
                    child: SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(right: 20, left: 20),
                  //   // padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                  //   width: getProportionateScreenWidth(40),
                  //   height: getProportionateScreenHeight(40),
                  //   decoration: BoxDecoration(
                  //     // color: Color(0xFFF5F6F9F),
                  //     shape: BoxShape.circle,
                  //   ),
                  //   child: SignInButton(
                  //     Buttons.Google,
                  //     // mini: true,
                  //     onPressed: () {},
                  //     text: false,
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.only(right: 37, left: 20),
                    // padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                      // color: Color(0xFFF5F6F9F),
                      shape: BoxShape.circle,
                    ),
                    child: SignInButton(
                      Buttons.Twitter,
                      mini: true,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SigninForm extends StatefulWidget {
  const SigninForm({Key? key}) : super(key: key);

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  // final _formKey = GlobalKey<FormState>();
  // final List<String> errors = ["demo error"];

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          // SizedBox(height: getProportionateScreenHeight(20)),
          // formError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(80)),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              height: 55,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              child: Text(
                'continue',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.lock_outline),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'enter your password',
        labelText: 'password',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'enter your email',
        labelText: 'email',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}
