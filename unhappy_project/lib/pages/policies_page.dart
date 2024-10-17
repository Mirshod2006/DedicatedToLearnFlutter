import 'package:flutter/material.dart';

class TurnToFPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('The Seventh Page',
          style:TextStyle(color:Colors.black87,
              fontWeight:FontWeight.bold),
        ),
        backgroundColor:Colors.purple.shade200,
      ),
      body:const Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Text(
              'F Sahifasi',
              style:TextStyle(
                fontSize:45.0, color:Colors.green,
                fontWeight:FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

}