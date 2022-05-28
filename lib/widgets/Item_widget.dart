import 'package:flutter/material.dart';

import '../models/catalogue.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key,required this.item}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text("\$${item.price}"),
        onTap: (){
          //print(item.name+" Pressed");
        },
      ),
    );
  }
}
