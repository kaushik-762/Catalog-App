import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/home_page.dart';
import 'package:flutter_app1/utils/routes.dart';


class LoginPage extends StatelessWidget {
LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Material(
      color: Colors.white,

      //"SingleChildScrollView"-- Enabling Scroll Option of the page in case of overflow
      child: SingleChildScrollView(
        child: Column(
          children:[
            Image.asset("assets/images/login1.png",
              fit: BoxFit.cover,
            ),  
      
      
            //SizedBox--> Alternate for Padding  
            SizedBox(height: 20.0,
              child: Text("-------"),
            ),
      
            Text("Welcome",
              style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
      
      
            SizedBox(height: 20.0,
              child: Text("-------"),
            ),
      
      
      
            Padding(
              padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:32.0),
              child: Column(
                children:[
                  TextFormField(
                    decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
      
      
                  TextFormField(
      
                    //"obscureText"--to hide password
                    obscureText: true,
                    decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
      
                SizedBox(
                  height: 40.0,
                ),
      
      
                //"login" button
      
               ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute)
                  ;}, 
                style: TextButton.styleFrom(
                  minimumSize: Size(150,40),
                ),     
               )
      
           ],
         ),
        ),
      
      
          ],  
        ),
      ),
    );
    
  }
}
