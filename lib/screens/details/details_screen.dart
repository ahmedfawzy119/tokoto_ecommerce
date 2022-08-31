import 'package:flutter/material.dart';
import 'package:tokoto/models/products.dart';
import 'package:tokoto/screens/details/components/body.dart';
import 'package:tokoto/screens/details/components/raiting_icon.dart';
import 'package:tokoto/screens/details/components/rounded_back_btn.dart';
import 'package:tokoto/size_config.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final arg =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: RoundedIconBtn(
              iconData: Icons.arrow_back,
              press: () => Navigator.pop(context),
            ),
          ),
        ),
        actions: [
          Rating(
            rating: arg.product.rating,
          )
        ],
      ),
      body: body(
        product: arg.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
