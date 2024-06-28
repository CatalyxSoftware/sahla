import 'package:flutter/material.dart';

class BottomNavigationItem {
  final Icon icon;
  final String label;
  const BottomNavigationItem(
    this.icon,
    this.label,
  );
}

class FurnitureColor {
  Color color;
  bool isSelected;

  FurnitureColor({required this.color, this.isSelected = false});
}

class Furniture {
  String title;
  String description;
  double price;
  int quantity;
  double score;
  List<String> images;
  bool isFavorite;
  List<FurnitureColor> colors;

  Furniture({
    required this.title,
    required this.description,
    required this.price,
    this.quantity = 1,
    required this.score,
    required this.images,
    this.isFavorite = false,
    required this.colors,
  });
}
