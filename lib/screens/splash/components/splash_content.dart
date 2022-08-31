import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/size_config.dart';

class splashContent extends StatelessWidget {
  const splashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Text(
            'TOKOTO',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        Spacer(),
        Image.network(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
