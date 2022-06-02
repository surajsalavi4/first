import 'package:flutter/material.dart';

import '../../models/catalogue.dart';
import '../../pages/item_detail_page.dart';
import 'catalogue_item.dart';

class CatalogueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogueModel.items.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ItemDetails(item: CatalogueModel.items[index])));
              },
              child: Hero(
                  tag: Key(CatalogueModel.items[index].id.toString()),
                  child: CatalogueItem(item: CatalogueModel.items[index])));
        },
      ),
    );
  }
}
