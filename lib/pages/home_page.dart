import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final name = "Kaushik";

  @override
  Widget build(BuildContext context) {
    //Scaffold-Entire Structure of Homepage.
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ), //Header

        //BODY      
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name"),
          ),
        ),
 

        drawer: Drawer(), //Footer

      );

    
  }
}