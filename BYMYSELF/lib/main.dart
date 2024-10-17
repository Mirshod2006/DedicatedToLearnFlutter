import 'package:flutter/material.dart';
import 'package:bymyself/NavBar.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"",
      theme:ThemeData(
        primarySwatch:Colors.deepPurple,
        visualDensity:VisualDensity.adaptivePlatformDensity,
      ),
      home:MyHomePage(title:'Flutter Home Project',),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
  MyHomePage({super.key, required this.title});
  final String title;
}

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;
   void  _incrementCounter(){
     setState(() {
       _counter++;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavBar(),
      appBar:AppBar(
        title:Text("Slider Bar"),
      ),
      body:Center(
      ),
    );
  }

}
