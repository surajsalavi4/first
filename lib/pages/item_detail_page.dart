import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/catalogue.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  const ItemDetails({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Image.network(item.image),
          ]),
        ),
      ),
    );
  }
}
