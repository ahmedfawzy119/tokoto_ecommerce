import 'package:flutter/material.dart';
import 'package:tokoto/routs.dart';
import 'package:tokoto/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)),
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
