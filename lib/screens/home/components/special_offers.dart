import 'package:flutter/material.dart';
import 'package:tokoto/size_config.dart';

class specialOffers extends StatelessWidget {
  const specialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionTile(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              specialOfferCard(
                image:
                    'https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/Image%20Banner%202.png?raw=true',
                category: 'Smartphones',
                numOfBrands: 18,
                press: () {},
              ),
              specialOfferCard(
                image:
                    'https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/Image%20Banner%203.png?raw=true',
                category: 'Fashion',
                numOfBrands: 24,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class specialOfferCard extends StatelessWidget {
  const specialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.network(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: '$category\n',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '$numOfBrands Brands')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class sectionTile extends StatelessWidget {
  const sectionTile({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
          GestureDetector(onTap: press, child: Text('See more'))
        ],
      ),
    );
  }
}
