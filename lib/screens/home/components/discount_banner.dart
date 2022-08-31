import 'package:flutter/material.dart';
import 'package:tokoto/size_config.dart';

class discountBanner extends StatelessWidget {
  const discountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'A summer surprise',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Cashback 20%',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
