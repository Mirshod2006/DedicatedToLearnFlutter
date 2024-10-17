import 'package:flutter/material.dart';
import 'package:flutter_project_3/lib/main2.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch:Colors.green,
      ),
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            "Flutter Applicationbbbbbb",
            style: TextStyle(fontSize: 30.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            debugPrint("Floating Action Button");
          },
          child:const Icon(
            Icons.add,
            color:Colors.green,
          ),
        ),
      ),
    );
  }
}
