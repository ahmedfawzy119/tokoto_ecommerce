import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/size_config.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.7, //60% of the screen width
            height: 50,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'search product',
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 10),
              width: getProportionateScreenWidth(46),
              height: getProportionateScreenWidth(46),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: kSecondaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
