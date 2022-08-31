import 'package:flutter/material.dart';
import 'package:tokoto/screens/home/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}
