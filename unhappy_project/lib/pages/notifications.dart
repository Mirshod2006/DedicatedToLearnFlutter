import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'settings_pages.dart';

class NotificationsPage extends StatelessWidget{
  static const keyNews ='key-News';
  static const keyNewsletter ='key-Newsletter';
  static const keyActivity ='key-Activity';
  static const keyAppUpdates ='key-appUpdates';

  const NotificationsPage({super.key});
  @override
  Widget build(BuildContext context)=>SimpleSettingsTile(
    title:'Notificatins',
    subtitle:'Newsletter,App Updates',
    leading:const IconWidget(
      color:Colors.redAccent,
      icon:Icons.notifications,
    ),
    child:SettingsScreen(
      title:'Notifications',
      children:<Widget>[
        buildNews(),
        buildActivity(),
        buildNewsletter(),
        buildAppUpdates(),
      ],
    ),
  );
  Widget buildNews() =>SwitchSettingsTile(
    title:'News For You',
    settingKey:keyNews,
    leading:const IconWidget(icon:Icons.message,color:Colors.blueAccent),
  );
  Widget buildActivity() =>SwitchSettingsTile(
    title:'Account Activity',
    settingKey:keyActivity,
    leading:const IconWidget(icon:Icons.person,color:Colors.green),
  );
  Widget buildNewsletter() =>SwitchSettingsTile(
    title:'Newsletter',
    settingKey:keyNewsletter,
    leading:const IconWidget(icon:Icons.text_snippet,color:Colors.yellow),
  );
  Widget buildAppUpdates() =>SwitchSettingsTile(
    title:'App Updates',
    settingKey:keyAppUpdates,
    leading:const IconWidget(icon:Icons.restart_alt,color:Colors.red),
  );
}