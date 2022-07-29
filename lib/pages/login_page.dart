import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/home_page.dart';
import 'package:flutter_app1/utils/routes.dart';


class LoginPage extends StatefulWidget {
LoginPage({Key? key}) : super(key: key);



  @override
  State<LoginPage> createState() => _LoginPageState();
}

//"_" as a prefix in any method name or variable denotes that it is private to the class
class _LoginPageState extends State<LoginPage> {
  String name=" ";
  bool changedButton=false;  //for animation

  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if (_formKey.currentState!.validate()){
                setState(() {
                        changedButton=true;
                      });
                 
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.homeRoute); 
        
                      
                      setState(() {
                        changedButton=false;
                      });

           }

  }


  @override
  Widget build(BuildContext context) {
    

    return Material(
      color: Colors.white,

      //"SingleChildScrollView"-- Enabling Scroll Option of the page in case of overflow
      child: SingleChildScrollView(
        child: Form(

          key: _formKey,

          

          child: Column(
            children:[
              Image.asset("assets/images/hey1.png",
                fit: BoxFit.cover,
              ),  
              
              
              //SizedBox--> Alternate for Padding  
              SizedBox(height: 20.0,
                child: Text("-------"),
              ),
              
              Text("Welcome $name",
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

                    validator: (value) {
                      if(value!.isEmpty){
                        return "Username cannot be empty";
                      }

                      return null;
                    },
        
                     //To add the name next to "Welcome" Text
                    onChanged: (value) {
                      name=value;
        
                      setState(() {
                        //To call the build method again
                      });
                    } ,
        
                  ),
              
              
                    TextFormField(
              
                      //"obscureText"--to hide password
                      obscureText: true,
                      decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),

                     validator: (value) {
                      if(value!.isEmpty){
                        return "Password cannot be empty";
                      }
                      else if(value.length<6){
                        return "Password should be of atleast 6 characters";
                      }

                      return null;
                    },
        
                    
                   
                  ),
              
                  SizedBox(
                    height: 40.0,
                  ),
              
              
                 //Container--->wrap with InkWell
                 //"InkWell"-- To make the container responsive and functional like an elevated button
                 Material(
        
        
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changedButton?50: 8),
                   
                   child: InkWell(
                    
                    splashColor: Colors.green,
                    //"onTap"-->to make the container functional when tapped
                    
                    onTap: ()=>moveToHome(context),
                 
                 
                      //Container--> AnimatedContainer  (To add animation)
                     child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changedButton? 50: 150,
                      /*   color: Colors.deepPurple, */
                        alignment: Alignment.center,
                 
                        child: changedButton?Icon(Icons.done,color: Colors.white,)
                 
                        : Text("Login",
                          style:TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                   
                        
                   
                     ),
                   ),
                 )
                 
                 
                 
                 
                 
                 
                 
                  //"login" button
                 /* ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute)
                    ;}, 
                  style: TextButton.styleFrom(
                    minimumSize: Size(150,40),
                  ),     
                 ) */
              
             ],
           ),
          ),
              
              
            ],  
          ),
        ),
      ),
    );
    
  }
}
