import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shina_shopbyme/components/cart_items.dart';
import 'package:shina_shopbyme/models/cart.dart';
import 'package:shina_shopbyme/models/shina.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Consumer<Cart>(
    builder:(context, value ,child){
      return Padding(
        padding:EdgeInsets.symmetric(horizontal:25),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Text(
              "Mening buyurtmalarim",
              style:TextStyle(fontSize:20,fontFamily:"bold"),
            ),
            SizedBox(height: 10,),
            Expanded(child:ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder:(context,index){
              Shina individualShina = value.getUserCart()[index];
              return CartItem(shina: individualShina);
            }
            ),
            ),
          ],
        ),
      );
    }
  );

}