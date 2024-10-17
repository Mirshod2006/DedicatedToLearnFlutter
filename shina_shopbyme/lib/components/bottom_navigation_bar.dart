import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget{
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key,required this.onTabChange, required void Function(dynamic index) onTapChange});

  @override
  Widget build(BuildContext context)=>Container(
    padding:EdgeInsets.symmetric(vertical:25),
    child:GNav(
      color:Colors.white,//grey[800] this color is belong to icon
      activeColor:Colors.grey.shade800,
      tabActiveBorder:Border.all(color:Colors.black87),//white
      tabBackgroundColor:Colors.white,//grey.shade200
      mainAxisAlignment:MainAxisAlignment.center,//the location of buttons will be specified
      onTabChange:(value) =>onTabChange!(value),
      tabBorderRadius:16,//this shows the border radius of tabs that when you pushed it, it this will be shown
      gap:5,// distance between two buttons if there is a lot more than two all will have the same gap or distance amoung them
      tabs:const [ // GNav requirs tabs or buttons  in this part we have to declare GButtons
        GButton(icon:Icons.home,
        text:"Magazin",
        textStyle:TextStyle(fontFamily:"regular"),
        ),
        GButton(icon:Icons.shopping_bag_rounded,
        text:"Buyurtma",
        textStyle:TextStyle(fontFamily:"regular",),
        ),
      ],
    ),
  );
}