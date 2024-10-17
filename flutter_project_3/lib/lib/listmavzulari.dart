import 'package:flutter/material.dart';

class ListThemes extends StatelessWidget{
    List<int> numbers =List.generate(200, (index) => index);
  List<String> text =List.generate(200, (index) => "List elementi $index");
  @override
  Widget build(BuildContext context){
       return ListView(children:numbers
        .map(
          (justTimeNum) =>Column(
       children:<Widget>[
        Column(
          children:<Widget>[
        Card(
          color:Colors.blue.shade900,
          margin: EdgeInsets.all(20),
          elevation: 30.0,
          // child:Text("ThisIsCard",
          // style:TextStyle(color:Colors.white,
          // fontWeight: FontWeight.bold),
          // ),
          child: ListTile(
            leading:CircleAvatar(
              radius:12,
              child:Icon(Icons.alarm),),
            title:Text("Hello I'm ${justTimeNum+1} -element!"),
            subtitle: Text("${text[justTimeNum]}!"),
            trailing:Icon(Icons.add_circle_outline,color:Colors.black87,
            ),
          ),
        ),
        
       const  Divider(color:Colors.black,height:20.0,thickness:2,),
       
          ]
        ),
       ]
      ),
        ).toList()
       );
  }
}