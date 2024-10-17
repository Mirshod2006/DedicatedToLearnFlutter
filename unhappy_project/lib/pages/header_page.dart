import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:unhappy_project/pages/settings_pages.dart';
import 'account_page.dart';
import 'package:unhappy_project/main.dart';

class HeaderPage extends StatelessWidget{
  static const keyDarkMode ='key-dark-mode';

  get isDarkMode => Settings.getValue<bool>(HeaderPage.keyDarkMode,defaultValue: true);
  @override
  Widget build(BuildContext context)=>Column(
    children:<Widget>[
      buildHeader(),
      const SizedBox(height:32,),
      buildUser(),
      buildDarkMode(),
    ],
  );
  Widget buildHeader()=>Center(child:
    Text('Settings',
    style:TextStyle(fontSize:30.0,color:isDarkMode ? Colors.white : Colors.black87,),
    ),
  );
  Widget buildUser()=>UserAccountsDrawerHeader(accountName:const Text('Xamrayev\nMirshod',
    style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold),),
    accountEmail:const Text('xamrayevmirshod@gmail.com',
      style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold),),
    currentAccountPicture:CircleAvatar(
      child:ClipOval(
        child:Image.network(
          'https://th.bing.com/th/id/R.6c6b24cc13711c81b8195195207f1143?rik=hjdqSBYcOWjO6A&riu=http%3a%2f%2fpulpbits.net%2fwp-content%2fuploads%2f2014%2f01%2fTabby-Cat-Images.jpg&ehk=%2fZ888cHTxBhWmeBDM7txDTST1TTI3Tf6lSCHOQO9tDg%3d&risl=&pid=ImgRaw&r=0',
          width: 200,
          height:200,
          alignment:Alignment.center,
          fit:BoxFit.cover,
        ),
      ),
    ),
    decoration:BoxDecoration(
      borderRadius:BorderRadius.circular(15),
      color:Colors.green,
      image:const DecorationImage(
        image:NetworkImage('https://th.bing.com/th/id/R.dcc41ed3a610b9cac0fe1777e7f6e57a?rik=lb%2be2pX%2bmA15RQ&riu=http%3a%2f%2fimages.huffingtonpost.com%2f2016-02-19-1455895501-3907280-main.jpg&ehk=w9vhU6K2ErQKVokDdPvl9wYmPAp0ncvKVWcqbSSQqQ8%3d&risl=1&pid=ImgRaw&r=0',
        ),
        fit:BoxFit.cover,
      ),
    ),
  );
  Widget buildDarkMode()=>SwitchSettingsTile(title: 'Dark Mode',
    settingKey:keyDarkMode,
  leading:IconWidget(icon: Icons.dark_mode, color:Color(0xFF642ef3),
  ),
  onChange:(_){},
  );
}