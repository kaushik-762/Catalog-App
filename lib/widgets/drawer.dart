import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://media-exp1.licdn.com/dms/image/C4D03AQEbCaECkl6tHg/profile-displayphoto-shrink_800_800/0/1653100425920?e=1664409600&v=beta&t=ffTWIRq2wd98_dWT1qlBDHPCG84E9GnevwESmXSp-PU";
    return Drawer(
      child:Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Kaushik Das",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),), 
                accountEmail: Text("kaushik762das@gmail.com",style: TextStyle(color: Colors.white),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              
                ),
            ),


            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,

              ),
              title: Text("Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,

              ),
              title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
            ),


            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,

              ),
              title: Text("Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
            )

          ],
        ),
      ),
    );
    
  }
}