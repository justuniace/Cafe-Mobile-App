import 'package:coffee_app/screens/product/product.dart';
import 'package:flutter/material.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({required this.product, required this.numOfItems});
}

// demo data for the cart
List<Cart> Carts = [
  Cart(product: Products[0], numOfItems: 2),
  Cart(product: Products[1], numOfItems: 1),
  Cart(product: Products[2], numOfItems: 1),
  Cart(product: Products[3], numOfItems: 1),
//  Cart(product: demoProducts[3], numOfItems: 1),
];
