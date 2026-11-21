// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GroceryItem {
  final String imagePath;
  final String itemName;
  final String? itemDescription;
  final String? itemPrice;
  final Color? color;

  GroceryItem({
    this.color,
    required this.imagePath,
    required this.itemName,
    this.itemDescription,
    this.itemPrice,
  });
}
