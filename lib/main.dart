import "package:flutter/material.dart";

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
      home:HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.red,
        brightness: Brightness.light

      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String mytext="Hello World dfdf";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page - Calculator"),
      ),
      body: _homeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alarm),
        onPressed: _Onbtn_Click,
      ),
      );
  }

  Widget _homeBody()
  {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child:Center(
            child:Column(
              children: [
                Text(mytext),

              ],
            )
        )
    );
  }

  void _Onbtn_Click()
  {
    setState((){
      mytext="Button Clicked";
    });
  }

}


