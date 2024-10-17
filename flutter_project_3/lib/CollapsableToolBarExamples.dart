import 'package:flutter/material.dart';
import 'dart:math' as math;
class CollapsabableToolBarExamples extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:<Widget>[
        SliverAppBar(
          backgroundColor:Colors.green,
          expandedHeight:200.0,
          floating:true,
          pinned:true,
          snap:true,
          flexibleSpace:FlexibleSpaceBar(
            centerTitle:true,
            collapseMode:CollapseMode.parallax ,
            title:const Text("Sliver App Bar",textAlign:TextAlign.center,
              style:TextStyle(color:Colors.black87,),
            ),
            background:Image.asset("images/behruz.jpg",fit:BoxFit.contain,),
          ),
        ),
        SliverGrid.extent(maxCrossAxisExtent:200,children: methodListElements()
        ),
        SliverGrid(delegate:SliverChildBuilderDelegate(_dynamicElementOutter,
         childCount:32,),
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        ),
        SliverGrid.count(crossAxisCount:4,children: methodListElements()
        ),
        SliverList(
          delegate:SliverChildBuilderDelegate(
          _dynamicElementOutter,childCount: 30,
          ),
        ),
        SliverFixedExtentList(delegate: SliverChildBuilderDelegate(_dynamicElementOutter,childCount:100,),
          itemExtent: 150,),
      ],
    );
  }

  List<Widget> methodListElements() {
   return [
    Container(height: 200,
      child:Text("Nima ham derdim,"
          "\nkelsa bir so'z xayolimga,"
          "\nshu on tiqilar tomog'imga!",
        style: TextStyle(fontSize: 25.0,
            fontWeight: FontWeight.bold),),
      color: Colors.blue,
      alignment: Alignment.center,
    ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.yellow,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.brown,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.redAccent,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.pink,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.purpleAccent,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.deepPurpleAccent,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.cyanAccent,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.green,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.yellowAccent,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(height: 200,
        child: Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: Colors.black,
        alignment: Alignment.center,
      ),
    ];
    }
  Widget _dynamicElementOutter(BuildContext context,int index){
    return
      Container(height: 200,
        child:Text("Nima ham derdim,"
            "\nkelsa bir so'z xayolimga,"
            "\nshu on tiqilar tomog'imga!",
          style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),),
        color: anyColor(),
        alignment: Alignment.center,
      );
  }
  Color anyColor(){
    return Color.fromARGB(math.Random().nextInt(255), math.Random().nextInt(255), math.Random().nextInt(255), math.Random().nextInt(255),);
  }

}