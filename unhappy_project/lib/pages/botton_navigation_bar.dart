import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:unhappy_project/main.dart';

class MyButtonNavigationBar extends StatelessWidget{
  void Function(BuildContext context)? onTabChange;
  MyButtonNavigationBar({super.key,required this.onTabChange, required void Function(dynamic context) onTapChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(vertical:25),
      child:GNav(
        color:Colors.blueAccent,
        activeColor:Colors.black87 ,
        tabActiveBorder:Border.all(color:Colors.grey.shade700),
        tabBackgroundColor:Colors.blueAccent,
        mainAxisAlignment:MainAxisAlignment.center,
        tabBorderRadius:16,
        onTabChange:(context){
          setState(){
            return onTabChange!(context as BuildContext);
          }
        },
        gap:8,
        tabs: const [
          GButton(
            icon:Icons.source,
            text:"Source",
              textStyle:TextStyle(fontFamily:"regular")
          ),
          GButton(
            icon:Icons.save_alt,
            text:"Saved",
            textStyle:TextStyle(fontFamily:"regular"),
          )
        ],
      ),
    );
      }

}