import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shina_shopbyme/componenets/shina_tile.dart';
import 'package:shina_shopbyme/components/shina_tile.dart';
import 'package:shina_shopbyme/models/cart.dart';
import 'package:shina_shopbyme/models/shina.dart';

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState()=> _ShopPageState();
}

class _ShopPageState extends State<ShopPage>{
  void addShinaToCart(Shina shina){
    Provider.of<Cart>(context,listen:false).addItemToCart(shina);

    showDialog(context:context, builder:(context)=>AlertDialog(
      title:Text("Muvaffaqiyatli qo'shildi"),
      actions: [
        TextButton(
          onPressed:(){
            Navigator.of(context).pop();
          },
          child:Text("OK"),
        ),
      ]
    ));
  }
  @override
  Widget build(BuildContext context)=>Consumer<Cart>(
    builder:(context,value,child){
      return Column(
        children:<Widget>[
          Container(
        margin:const EdgeInsets.symmetric(horizontal:25),
            padding:const EdgeInsets.all(20),
            decoration:BoxDecoration(
              color:Colors.grey[200],
              borderRadius:BorderRadius.circular(10),
            ),
            child:const Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  "Qidirish",
                  style:TextStyle(fontFamily:"regular",color:Colors.grey,),
                ),
                Icon(
                  Icons.search,
                  color:Colors.grey,
                ),
              ],
            ),
        ),
          const SizedBox(height:10,),
          const Text(
            "Qaynoq tanlovlar 🔥",
            style:TextStyle(fontSize:24,fontFamily:"bold"),
          ),
          const SizedBox(
            height:10,
          ),
          Expanded(child:ListView.builder(
            itemCount:value.shinaShop.length,
            scrollDirection:Axis.horizontal,
            itemBuilder:(context,index){
            Shina shina = value.getShinaList()[index];
            return ShinaTile(shina: shina,
            onTap:() => addShinaToCart(shina),);
          },
          ),
          ),
          const Padding(
              padding:EdgeInsets.only(top:25,left:25,right:25,),
            child:Divider(
              color:Colors.white,
            ),
          ),
    ]
      );
    },
  );
}