import 'package:flutter/material.dart';
import 'package:tokoto/models/products.dart';
import 'package:tokoto/screens/details/details_screen.dart';
import 'package:tokoto/screens/home/components/product_card.dart';
import 'package:tokoto/screens/home/components/special_offers.dart';
import 'package:tokoto/size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionTile(
          text: 'Popular product',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Navigator.pushNamed(
                      context,
                      DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(
                        product: demoProducts[index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
