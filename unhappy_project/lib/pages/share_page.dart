import 'package:flutter/material.dart';

class TurnToCPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('The Fourth Page',
          style:TextStyle(color:Colors.black87,
              fontWeight:FontWeight.bold),
        ),
        backgroundColor:Colors.purple.shade200,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Text(
              'D Sahifasi',
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