import 'package:flutter/widgets.dart';
import 'package:tokoto/screens/details/details_screen.dart';
import 'package:tokoto/screens/home/home_screen.dart';
import 'package:tokoto/screens/sign_in/sign_in_screen.dart';
import 'package:tokoto/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
