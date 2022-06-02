import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalogue.dart';
import '../../utils/themes.dart';

class CatalogueItem extends StatelessWidget {
  final Item item;

  const CatalogueItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        ItemImage(
          image: item.image,
        ),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                item.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
                item.desc.text.make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${item.price}".text.bold.xl.make(),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                      onPressed: () {},
                      child: "Buy".text.xl.bold.make(),
                    ).pOnly(right: 10)
                  ],
                )
              ]),
        )
      ],
    )).white.rounded.square(120).make().py12();
  }
}

class ItemImage extends StatelessWidget {
  final String image;
  const ItemImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w32(context);
  }
}
