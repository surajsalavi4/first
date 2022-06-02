import 'dart:convert';

import "package:flutter/material.dart";
import 'package:second/pages/item_detail_page.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:flutter/services.dart';

import 'package:second/utils/themes.dart';

import '../models/catalogue.dart';
import '../widgets/Item_widget.dart';
import '../widgets/drawer.dart';
import '../widgets/home_widgets/catalogue_header.dart';
import '../widgets/home_widgets/catalogue_list.dart';

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
                CircularProgressIndicator().centered().expand()
            ]),
          ),
        ));
  }

  void _Onbtn_Click() {
    setState(() {});
  }
}
