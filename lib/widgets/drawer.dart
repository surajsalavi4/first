import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(

         children: [
           Center(
             child: Image.network("http://anyimage.net/wp-content/uploads/2015/11/anyimagelogo.png"),
           ),
           DrawerHeader(
             padding: EdgeInsets.zero,
               child: Center(
                 child: UserAccountsDrawerHeader(
                   accountName: Text("Suraj Salavi"),
                   accountEmail: Text("surajsalavi4@gmail.com"),
                   currentAccountPicture: CircleAvatar(
                     backgroundImage: NetworkImage("http://anyimage.net/wp-content/uploads/2015/11/anyimagelogo.png"),
                   ),
                 ),
               ),
           ),
           ListTile(
               leading: Icon(Icons.home),
               title: Text("Home")
           ),
           ListTile(
               leading: Icon(Icons.person),
               title: Text("Profile"),

           ),
         ],
      )
    );
  }
}
