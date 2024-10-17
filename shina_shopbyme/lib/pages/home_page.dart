import 'package:flutter/material.dart';
import 'package:shina_shopbyme/components/bottom_navigation_bar.dart';
import 'package:shina_shopbyme/pages/cart_page.dart';
import 'package:shina_shopbyme/pages/shop_page.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectesIndex =0;
  void navigateBottomBar(int index){
    setState((){
      _selectesIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(),CartPage()];
  @override
  Widget build(BuildContext context)=> Scaffold(
    appBar:AppBar(
      backgroundColor:Colors.transparent,
      elevation:0,
      leading:Builder(builder:(context){
        return IconButton(
          onPressed:(){
            Scaffold.of(context).openDrawer();
          },
          icon:const Padding(
            padding:EdgeInsets.only(left:12),
            child:Icon(Icons.menu,
            color:Colors.black87,),
          ),
        );
      }),
    ),
    drawer:Drawer(
      backgroundColor:Colors.grey[900],
      child:Column(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Column(
      children:[
          DrawerHeader(child:Image.asset(
            "assets/images/logo.png",
            width:200,
            color:Colors.white,
          ),),
          const Padding(
            padding:EdgeInsets.only(left:25),
            child:ListTile(
              leading:Icon(
                Icons.home,
                color:Colors.white,
              ),
              title: Text(
                "Home",
                style:TextStyle(color:Colors.white,fontFamily:"regular"),
              ),
            ),
          ),
          const Padding(padding:
          EdgeInsets.only(left:25),
          child:ListTile(
            leading:Icon(
              Icons.info,
              color:Colors.white,
            ),
            title:Text("Biz haqimizda",
            style:TextStyle(color:Colors.white,fontFamily:"regular"),
            ),
          ),
          ),
          ],
          ),
          const Padding(
            padding:EdgeInsets.only(left:25,bottom:25,),
            child:ListTile(
              leading:Icon(
                Icons.logout,
                color:Colors.white,
              ),
              title:Text(
                "Chiqish",
                style:TextStyle(color:Colors.white,fontFamily:"regular"),
              ),
            ),
          ),
        ],
      ),
    ),
    backgroundColor: Colors.grey[300],
    bottomNavigationBar: MyBottomNavBar(
      onTapChange: (index) => navigateBottomBar(index), onTabChange: (int ) {  },
    ),
    body: _pages[_selectesIndex],
  );
}
