import'package:flutter/material.dart';
import 'package:shina_shopbyme/models/shina.dart';

class ShinaTile extends StatelessWidget{
  Shina shina;
  ShinaTile({super.key, required this.shina, required void Function() onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context)=> Container(
    margin:EdgeInsets.only(left:25,),
    width:280,
    decoration:BoxDecoration(
      color:Colors.grey[100],
      borderRadius:BorderRadius.circular(12),
    ),
    child:Column(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children:[
        ClipRRect(
          borderRadius:BorderRadius.circular(12),
          child:Image.asset(
            shina.imagePath,
            height:250,
            fit:BoxFit.cover,
            width:double.infinity,
          ),
        ),
        Padding(
          padding:const EdgeInsets.symmetric(horizontal:25),
          child:Text(
            shina.description,
            style:TextStyle(color:Colors.grey[700],
            fontFamily:"regular",),
          ),
        ),
        Padding(
          padding:const EdgeInsets.only(left:25,),
          child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text(
                    shina.name,
                    style:TextStyle(fontFamily:"bold",fontSize:20),
                  ),
                ],
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration:const BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(12))),
                    child:const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ],
    ),
  );
}