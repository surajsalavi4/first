import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page - Calculator"),
      ),
      body: Container(
          padding: const EdgeInsets.all(8.0),
          child:Center(
              child:Column(
                children: [
                  Text("Hello World"),
                ],
              )
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alarm),
        onPressed: _Onbtn_Click,
      ),
      drawer: Drawer(),
    );
  }

  void _Onbtn_Click()
  {

    setState((){});
  }

}