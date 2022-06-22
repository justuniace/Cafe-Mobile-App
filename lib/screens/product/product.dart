import 'package:coffee_app/components/colors.dart';
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

List<Product> Products = [
  Product(
    id: 1,
    images: [
      "images/home/coffee1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kape",
    price: 1,
    description: 'description',
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "images/home/coffee2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      AppColor.lightBrownColor,
    ],
    title: "Kape",
    price: 50.5,
    description: 'description',
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "images/home/coffee3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kape",
    price: 50.5,
    description: 'description',
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "images/home/coffee4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kape",
    price: 50.5,
    description: 'description',
    rating: 4.1,
    isPopular: true,
  ),
];
