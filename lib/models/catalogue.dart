import 'package:flutter/material.dart';

class CatalogueModel{
  static final items=[Item(id:1,name:"First Product",description: "description",price:100,color:"#000",imageUrl: "http://anyimage.net/wp-content/uploads/2015/11/anyimagelogo.png")];
}

class Item{
  num id;
  String name;
  String description ;
  num price;
  String color;
  String imageUrl;

  Item({required this.id,required this.name,required this.description,required this.price,required this.color,required this.imageUrl});
}