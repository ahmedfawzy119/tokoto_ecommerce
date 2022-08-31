import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/models/products.dart';
import 'package:tokoto/screens/home/components/discount_banner.dart';
import 'package:tokoto/screens/home/components/home_header.dart';
import 'package:tokoto/screens/home/components/popular_products.dart';
import 'package:tokoto/screens/home/components/product_card.dart';
import 'package:tokoto/screens/home/components/special_offers.dart';
import 'package:tokoto/size_config.dart';

import 'categories.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            homeHeader(),
            discountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            specialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProduct()
          ],
        ),
      ),
    );
  }
}
