import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/login_page.dart';
import 'package:flutter_app1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override

  //Widget-return widget(just like int and void)
  //BuildContext-Parameter of the method "build"
  //for method--> void bringVegetables({bool thaila=false},{int paisa=100})
  //{}- optional parameters
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,

      theme: ThemeData(
          primarySwatch: Colors.deepPurple, brightness: Brightness.light,
            fontFamily: GoogleFonts.lato().fontFamily,
            primaryTextTheme: GoogleFonts.latoTextTheme(),
          ),

      darkTheme: ThemeData(brightness: Brightness.dark),

      //routes take {Map} as input
      initialRoute: "/Login",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (Context) => LoginPage(),
      },
    );
  }
}
