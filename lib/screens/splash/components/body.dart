import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/screens/sign_in/sign_in_screen.dart';
import 'package:tokoto/screens/splash/components/splash_content.dart';
import 'package:tokoto/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List splashdata = [
    {
      'text': 'Welcome to TOKOTO, lets shop!',
      'image':
          'https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/splash_1.png?raw=true'
    },
    {
      'text': 'We help people connect with store \naround EGYPT.',
      'image':
          'https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/splash_2.png?raw=true'
    },
    {
      'text': 'We show the easy way to shop. \njust stay at home with us.',
      'image':
          'https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/splash_3.png?raw=true'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: splashdata.length,
            itemBuilder: (context, index) => splashContent(
              image: splashdata[index]['image'],
              text: splashdata[index]['text'],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(20)),
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashdata.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: kPrimaryColor,
                    onPressed: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        )
      ],
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
