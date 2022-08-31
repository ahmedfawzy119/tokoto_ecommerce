import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/ps4_console_white_1.png?raw=true",
      "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/ps4_console_white_2.png?raw=true",
      "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/ps4_console_white_3.png?raw=true",
      "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/ps4_console_white_4.png?raw=true",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/Image%20Popular%20Product%202.png?raw=true",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/glap.png?raw=true",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 5.0,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/wireless%20headset.png?raw=true",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 3.5,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
