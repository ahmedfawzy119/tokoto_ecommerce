import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text(
            rating.toString(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(
            Icons.star,
            size: 15,
            color: Color.fromARGB(255, 247, 202, 0),
          )
        ],
      ),
    );
  }
}
