import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final name = "Kaushik";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name"),
          ),
        ),
      );

    
  }
}