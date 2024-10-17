import 'package:flutter/material.dart';
import 'package:unhappy_project/pages/policies_page.dart';
import 'package:unhappy_project/pages/requests_page.dart';
import 'package:unhappy_project/pages/settings_pages.dart';
import 'package:unhappy_project/pages/share_page.dart';
import 'Navigation.dart';
import 'pages/commmunitypage.dart';
import 'pages/favoritespage.dart';
class NavBar extends StatelessWidget{
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding:EdgeInsets.zero,
        children:[
          UserAccountsDrawerHeader(accountName:const Text('Xamrayev\nMirshod',
            style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold),),
            accountEmail:const Text('xamrayevmirshod@gmail.com',
              style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold),),
            currentAccountPicture:CircleAvatar(
              child:ClipOval(
                child:Image.network(
                  'https://th.bing.com/th/id/R.6c6b24cc13711c81b8195195207f1143?rik=hjdqSBYcOWjO6A&riu=http%3a%2f%2fpulpbits.net%2fwp-content%2fuploads%2f2014%2f01%2fTabby-Cat-Images.jpg&ehk=%2fZ888cHTxBhWmeBDM7txDTST1TTI3Tf6lSCHOQO9tDg%3d&risl=&pid=ImgRaw&r=0',
                width: 100,
                height:100,
                fit:BoxFit.cover,
                ),
              ),
            ),
            decoration:const BoxDecoration(
              color:Colors.blue,
              image:DecorationImage(
                image:NetworkImage('https://th.bing.com/th/id/R.dcc41ed3a610b9cac0fe1777e7f6e57a?rik=lb%2be2pX%2bmA15RQ&riu=http%3a%2f%2fimages.huffingtonpost.com%2f2016-02-19-1455895501-3907280-main.jpg&ehk=w9vhU6K2ErQKVokDdPvl9wYmPAp0ncvKVWcqbSSQqQ8%3d&risl=1&pid=ImgRaw&r=0',
              ),
                fit:BoxFit.cover,
                ),
            ),
          ),
        ListTile(
          leading:const Icon(Icons.favorite,
          color:Colors.black,),
          title:const Text('Favorites',style:TextStyle(color:Colors.black87,),),
          onTap:(){
            Navigator.push(context,
              MaterialPageRoute(builder:(context) => const TurnToAnotherPage(),
              ),
            );
          },
        ),
          ListTile(
            leading:const Icon(Icons.people,
              color:Colors.black,),
            title:const Text('People',style:TextStyle(color:Colors.black87,),),
            onTap:() {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TurnToBPage(),
                ),
              );
            }
          ),
          ListTile(
            leading:const Icon(Icons.share,
              color:Colors.black,),
            title:const Text('Share',style:TextStyle(color:Colors.black87,),),
            onTap:() {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TurnToCPage(),
                ),
              );
            },
          ),
          /*ListTile(
            leading:const Icon(Icons.notifications,
              color:Colors.black,),
            title:const Text('Requests',style:TextStyle(color:Colors.black87,),),
            onTap:() {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TurnToDPage(),
                ),
              );
            },
            trailing:ClipOval(
             child:Container(
              color:Colors.red,
              width:20,
              height:20,
              child:const Center(
                child:Text('8',
                style:TextStyle(
                  color:Colors.white,
                  fontSize:16,
                ),),
              ),
            ),
          ),
          ),*/
          const Divider(),
          ListTile(
            leading:const Icon(Icons.settings,
              color:Colors.black,),
            title:const Text('Settings',style:TextStyle(color:Colors.black87,),),
            onTap:() {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading:const Icon(Icons.description_outlined,
              color:Colors.black,),
            title:const Text('Policies',style:TextStyle(color:Colors.black87,),),
            onTap:() {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => TurnToFPage(),
          ),
          );
          },
          ),
          const Divider(),
          ListTile(
            leading:const Icon(Icons.exit_to_app,
              color:Colors.black,),
            title:const Text('Exit',style:TextStyle(color:Colors.black87,),),
            onTap: (){
             return Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}