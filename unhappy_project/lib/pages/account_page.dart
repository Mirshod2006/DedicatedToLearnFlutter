import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'settings_pages.dart';

class AccountPage extends StatelessWidget{
  static const keyLanguage = 'key-language';
  static const keyLocation = 'key-location';
  static const keyPassword ='key-password';
  @override
  Widget build(BuildContext context)=> SimpleSettingsTile(
    title:'Account Settings',
    subtitle:'Privacy, Security, Language',
    leading:IconWidget(icon:Icons.person, color:Colors.green,),
    child:SettingsScreen(
      title:'Account Settings',
      children:<Widget>[
        buildLanguage(),
        buildLocation(),
        Divider(),
        buildPassword(),
        Divider(),
        buildPrivacy(context),
        buildSecurity(context),
        buildAccountInfo(context),
      ],
    ),
  );
  Widget buildPrivacy(BuildContext context)=>SimpleSettingsTile(
    title:'Privacy',
    subtitle:'',
    leading:IconWidget(icon:Icons.lock,color:Colors.blue,),
    onTap:()=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Clicked Privacy'),
    )
    ),
  );
  Widget buildSecurity(BuildContext context)=>SimpleSettingsTile(
    title:'Security',
    subtitle:'',
    leading:IconWidget(icon:Icons.security,color:Colors.red,),
    onTap:()=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Clicked Security'),
    )
    ),
  );
  Widget buildAccountInfo(BuildContext context)=>SimpleSettingsTile(
    title:'Account Info',
    subtitle:'',
    leading:IconWidget(icon:Icons.text_snippet,color:Colors.purple,),
    onTap:()=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Clicked Account Info'),
    )
    ),
  );
  Widget buildLocation()=>TextInputSettingsTile(
    title:'Location',
    initialValue:'Australia',
    onChange:(location){},
    settingKey:keyLocation,
  );
  Widget buildLanguage()=>DropDownSettingsTile(
    title:'Language',
    settingKey:keyLanguage,
    selected:1,
    values:<int,String>{
      1:'English',
      2:'Spanish',
      3:'Chinese',
      4:'Hindi',
    },
    onChange:(language){},
  );
  Widget buildPassword()=>TextInputSettingsTile(title: 'Password',
    settingKey:keyPassword,
    obscureText:true,
    validator:(password)=>((password != null) && (password.length >= 6))
     ? null : 'Enter more or equal to 6 characters',
  );
}
