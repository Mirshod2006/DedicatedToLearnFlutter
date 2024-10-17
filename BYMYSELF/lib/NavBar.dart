// import 'package:flutter/material.dart';
//
// class NavBar extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Drawer(
//       child:ListView(
//         padding:EdgeInsets.zero,
//         children: [
//           UserAccountsDrawerHeader(
//             ListTile(
//               leading:Icon(Icons.favorite),
//               title:Text("Favorites",),
//               onTap:()=>null,
//             ),
//             ListTile(
//               leading:Icon(Icons.people),
//               title:Text("Friends",),
//               onTap:()=>null,
//             ),
//             ListTile(
//               leading:Icon(Icons.share),
//               title:Text('Share'),
//               onTap:()=>null,
//             ),
//             ListTile(
//               leading:Icon(Icons.notifications),
//               title:Text('Request'),
//               onTap:()=>null,
//               trailing:ClipOval(
//                 child:Container(
//                   color:Colors.red,
//
//                 ),
//               ),
//             ),
//             ListTile(
//               leading:,
//               title:,
//               onTap:()=>null,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child:ListView(
         children:[
           UserAccountsDrawerHeader(accountName:Text('Xamrayev\nMirshod'), accountEmail:Text('xamrayevmirshod@gmail.com'),
             currentAccountPicture:CircleAvatar(
               child:ClipOval(

               ),
             ),
           )
         ],
       ),
    );
  }

}