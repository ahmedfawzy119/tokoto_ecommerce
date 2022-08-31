import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/models/products.dart';
import 'package:tokoto/screens/details/components/rounded_back_btn.dart';
import 'package:tokoto/size_config.dart';

class ColorsDots extends StatelessWidget {
  const ColorsDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(
            width: 15,
          ),
          RoundedIconBtn(
            iconData: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(5),
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
