import "package:flutter/material.dart";
import 'package:second/pages/login_page.dart';
import 'package:second/utils/routes.dart';
import 'package:second/utils/themes.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My AThemeDatapp",
      //theme: MyTheme.lightTheme(context),
      // darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => Login()
      },
    );
  }
}
