import 'dart:convert';

import "package:flutter/material.dart";
import "package:velocity_x/velocity_x.dart";
import 'package:flutter/services.dart';

import 'package:second/utils/themes.dart';

import '../models/catalogue.dart';
import '../widgets/Item_widget.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    var decodedData = jsonDecode(catalogueJson);
    var productData = decodedData["products"];
    CatalogueModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CatalogueHeader(),
              if (CatalogueModel.items != null &&
                  CatalogueModel.items.isNotEmpty)
                CatalogueList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ]),
          ),
        ));
  }

  void _Onbtn_Click() {
    setState(() {});
  }
}

class CatalogueHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Catalogue App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
      "Trending Products".text.xl2.make(),
    ]);
  }
}

class CatalogueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogueModel.items.length,
      itemBuilder: (context, index) {
        return CatalogueItem(item: CatalogueModel.items[index]);
      },
    );
  }
}

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
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
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
