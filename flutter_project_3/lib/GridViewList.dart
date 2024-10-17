import 'dart:math';

import 'package:flutter/material.dart';

class GridViewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return GridView.builder(
          itemCount:102,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
          padding: EdgeInsets.all(0.0),
          reverse:false,
          primary:false,
          itemBuilder:(BuildContext context,int index){
          return  GestureDetector(
            child:Container(
              margin:EdgeInsets.all(10.0),
              alignment:Alignment.bottomCenter,
              decoration: BoxDecoration(
                border:Border.all(
                  color:Colors.white,
                  width:10.0,
                  style:BorderStyle.solid,
                ),
                boxShadow:const [
                  BoxShadow(
                    color:Colors.blueAccent,
                    offset: Offset(10.0, 2.5),
                    blurRadius:20.0,
                  )
                ],
              borderRadius: BorderRadius.circular(30.0),
                //shape:BoxShape.circle,
                color:Color((Random().nextDouble()*0xFFFFFF).toInt()<<0).withOpacity(1.0),
                gradient:const LinearGradient(colors:[Colors.orange,Colors.yellow],
                  begin:Alignment.topCenter,
                  end:Alignment.bottomCenter,
                ),
                image:const DecorationImage(
                    image:AssetImage('images/Mironshoh.jpg'),
                    fit:BoxFit.contain,
                    alignment:Alignment.bottomCenter),
              ),
            ),
            onTap:() => print("Salom Flutter Tap $index dagi box ishlayapti!"),
            onLongPress:() => print("Salom Flutter Long pressed $index dagi box ishlayapti!") ,
            onDoubleTap:() => print("Salom Flutter Double Tapped $index dagi box ishlayapti!"),
            onHorizontalDragStart:(x) =>() => print("Salom Flutter $x dagi box ishlayapti!"),
          );
        },
      );
  }

}
//scrollDirection:Axis.horizontal,
//   reverse:true,
        //     crossAxisCount:3,
        //     primary:false,
        //     padding: EdgeInsets.all(10.0),
        //     crossAxisSpacing:10,
        //     mainAxisSpacing: 40.0,
        // children:List<Widget>.generate(102, (int index){
        //     return Expanded(
        //       child: GridTile(
        //         child:Card(
        //       color:Color((Random().nextDouble()*0xFFFFFF).toInt()<<0).withOpacity(1.0),
        //     ),
        //     ),
        //     );
        //   }
        // ),
//GridView.builder(
//Expanded(
          //     child: GridTile(
          //       child:Card(
          //         margin: EdgeInsets.all(20.0),
          //     color:Color((Random().nextDouble()*0xFFFFFF).toInt()<<0).withOpacity(1.0),
          //     child:const Center( 
          //       child:Text("ThisIsResult!",style:TextStyle(
          //       color:Colors.black87,fontSize:100.0,
          //       fontWeight:FontWeight.bold),
          //       ),
          //       ),
          //   ),
          //   ),
          //       // alignment:Alignment.center,
          //       // color:Color((Random().nextDouble()*0xFFFFFF).toInt()<<0).withOpacity(1.0),
          //       // child:Text("Hello World ${index+1}",
          //       // textAlign:TextAlign.center,),

          // );
//);
