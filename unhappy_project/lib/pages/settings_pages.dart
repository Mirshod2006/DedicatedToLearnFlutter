import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:unhappy_project/pages/notifications.dart';
import 'account_page.dart';
import 'header_page.dart';

class SettingsPage extends StatefulWidget{
  @override
  _SettingsPageState createState() => _SettingsPageState();
}
class _SettingsPageState extends State<SettingsPage>{
  @override
  Widget build(BuildContext context)=> Scaffold(
    appBar:AppBar(
      leading:BackButton(
        onPressed:()=>Navigator.pop(context),
      ),
    ),
    body:SafeArea(
      child:ListView(
        padding:EdgeInsets.all(24),
        children:[
          HeaderPage(),
          SettingsGroup(title: 'GENERAL', children:<Widget>[
            AccountPage(),
            NotificationsPage(),
            buildLogout(),
            buildDeleteAccount(),
          ],
          ),
          const SizedBox(height:8,),
          SettingsGroup(title:'FEEDBACK', children:<Widget>[
            buildReportBug(context),
            buildSendFeedback(context),
          ],
          ),
        ],
      ),
    ),
  );
  Widget buildLogout()=>SimpleSettingsTile(
    title:'Logout',
    subtitle:'',
    leading:IconWidget(icon:Icons.logout,color:Colors.blue,),
    onTap:(){Navigator.pop(context);
     Settings.clearCache();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Clicked Delete Account'))
      );
    }//ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Clicked Logout'),
    );
  Widget buildDeleteAccount()=>SimpleSettingsTile(
    title:'Delete Account',
    subtitle:'',
    leading:const IconWidget(icon:Icons.delete,color:Colors.red,),
    onTap:()=>ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Clicked Delete Account'),
    )
    ),
  );
  Widget buildReportBug(BuildContext context)=>SimpleSettingsTile(
    title:'Report A Bug',
    subtitle:'',
    leading:IconWidget(
      icon:Icons.bug_report,
      color:Colors.teal,
    ),
    onTap:()=>ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Clicked Report Bug'),
    )
    ),
  );
  Widget buildSendFeedback(BuildContext context)=>SimpleSettingsTile(
    title:'Send Feedback',
    subtitle:'',
    leading:IconWidget(
      icon:Icons.thumb_up,
      color:Colors.purple,
    ),
    onTap:()=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Clicked SendFeedback'),
    )
    ),
  );
}

class IconWidget extends StatelessWidget{
  final IconData icon;
  final Color color;

  const IconWidget({Key? key,
      required this.icon,
     required this.color,
  }) : super(key:key);
  @override
  Widget build(BuildContext context)=>Container(
    padding:EdgeInsets.all(6.0),
    decoration:BoxDecoration(
      shape:BoxShape.circle,
      color:color,
    ),
    child:Icon(icon,color:Colors.white,
      size:30.0,),
  );
}