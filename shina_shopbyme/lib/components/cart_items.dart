import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shina_shopbyme/models/cart.dart';
import 'package:shina_shopbyme/models/shina.dart';

class CartItem extends StatefulWidget{
  Shina shina;
  CartItem({super.key, required this.shina});

  @override
  State<StatefulWidget> createState()=> _CartItemState();
}

class _CartItemState extends State<CartItem>{
  void removeItemFromCart(){
    Provider.of(context,listen:false).removeItemFromCart(widget.shina);
  }
  @override
  Widget build(BuildContext context)=>Container(
    decoration:BoxDecoration(
      color:Colors.grey[100],
      borderRadius:BorderRadius.circular(10),
    ),
    margin:EdgeInsets.only(bottom:10),
    child:ListTile(
      leading:Image.asset(
      widget.shina.imagePath,
        fit:BoxFit.cover,
        width:50,
        height:50,
      ),
      title:Text(widget.shina.name),
      subtitle:Text(widget.shina.price),
      trailing:
      IconButton(onPressed: removeItemFromCart,icon:Icon(Icons.delete),),
    ),
  );
}
