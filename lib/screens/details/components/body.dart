import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/models/products.dart';
import 'package:tokoto/screens/details/components/colors_dots.dart';
import 'package:tokoto/screens/details/components/product_description.dart';
import 'package:tokoto/screens/details/components/product_image.dart';
import 'package:tokoto/screens/details/components/rounded_back_btn.dart';
import 'package:tokoto/screens/details/components/top_rounded_container.dart';
import 'package:tokoto/size_config.dart';

class body extends StatelessWidget {
  const body({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                press: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorsDots(product: product),
                    AddChartBtn(
                      press: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class AddChartBtn extends StatelessWidget {
  const AddChartBtn({
    Key? key,
    required this.press,
  }) : super(key: key);

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Add to chart',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
