import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import '../widgets/Item_widget.dart';
import '../widgets/drawer.dart';
import '../models/catalogue.dart';
import 'dart:convert';

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
      appBar: AppBar(
        title: Text("Home Page - Calculator"),
      ),
      body: (CatalogueModel.items != Null && CatalogueModel.items.isNotEmpty)
          ? ListView.builder(
              itemCount: CatalogueModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: CatalogueModel.items[index],
                );
              })
          : Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }

  void _Onbtn_Click() {
    setState(() {});
  }
}
