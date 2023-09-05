import 'package:flutter/material.dart';

class FoodItemList {
  List<FoodItem> foodItems;

  FoodItemList({required this.foodItems});
}

class FoodItem {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  int quantity;

  FoodItem(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.quantity = 1});

  void incrementQuantity() {
    quantity = quantity + 1;
  }

  void decrementQuantity() {
    quantity = quantity - 1;
  }
}
