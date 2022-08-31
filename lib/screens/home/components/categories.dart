import 'package:flutter/material.dart';
import 'package:tokoto/size_config.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color iconColor = Color.fromARGB(255, 255, 116, 116);

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(55),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.flash_on_outlined,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Flash Deals',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(55),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.games_outlined,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Games',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(55),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.receipt_long_outlined,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Bill',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(55),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.card_giftcard_sharp,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Daily Gifts',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(55),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFECDF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.explore_outlined,
                      size: 40,
                      color: Color.fromARGB(255, 255, 116, 116),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'More+',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
