import "package:flutter/material.dart";
import 'package:second/pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.red,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily
      ),

      routes: {
          "/":(context)=>HomePage(),
        "/home":(context)=>HomePage(),
        "/login":(context)=>Login()
      },
    );
  }
}




