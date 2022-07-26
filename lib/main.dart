import 'package:flutter/material.dart';

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
      home: HomePage(), //To import HomePage(Command+.)

      themeMode: ThemeMode.light,

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),


      
      
    );
  }
}
