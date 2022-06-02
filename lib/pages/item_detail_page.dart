import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalogue.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  const ItemDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Hero(
                tag: Key(item.id.toString()), child: Image.network(item.image)),
          ]).p32(),
        ),
      ),
    );
  }
}
