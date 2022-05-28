import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CatalogueModel {
  static List<Item> items = [];
}

class Item {
  num id;
  String name;
  String description;
  num price;
  String color;
  String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.imageUrl});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        description: map["desc"],
        price: map["price"],
        color: map["color"],
        imageUrl: map["image"]);
  }
}
