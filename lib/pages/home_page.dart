import "package:flutter/material.dart";
import '../widgets/Item_widget.dart';
import '../widgets/drawer.dart';
import '../models/catalogue.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(50, (index) => CatalogueModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page - Calculator"),
      ),
      body:ListView.builder(
        itemCount: dummyList.length,
          itemBuilder:(context,index){
            return ItemWidget(
              item: dummyList[index],
            );
          }
      ),
      drawer: MyDrawer(),
    );
  }

  void _Onbtn_Click()
  {

    setState((){});
  }

}