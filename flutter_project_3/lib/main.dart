import 'package:flutter/material.dart';
import 'package:flutter_project_3/CollapsableToolBarExamples.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // builder: FToastBuilder(),
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      title:"Material App",
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Lists Application",
          style:TextStyle(fontSize: 25.0,
          fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange,
        ),
        body:CollapsabableToolBarExamples(),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.orange,
        child:const Icon(Icons.add,color:Colors.black87,size:20.0,),
        ),
      ),
    );

  }

}

// class MyHomePage extends StatefulWidget {
//   final String title;
//   int number = 0;

//   MyHomePage({required this.title}){}
//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageState();
//   }
//   // void increaseNumber(){
//   //     number ++;
//   //   debugPrint("$number");
//   // }
// }
// class MyHomePageState extends State<MyHomePage>{       
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar:AppBar(
//           title: Text(widget.title,
//             style:const TextStyle(color:Colors.black87,
//                 fontSize:30.0,fontWeight:FontWeight.w500),
//           ),
//           backgroundColor: Colors.blue.shade700,
//         ),
//         floatingActionButton:FloatingActionButton(
//           onPressed:() {
//             setState(() {
//               widget.number++;
//               debugPrint("${widget.number}");
//             });
//           },
//           backgroundColor: Colors.blue,
//           child:const Icon(
//             Icons.add,
//                 size: 40.0,
//           ),
//         ),
//         body:Center(
//           child:Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children:<Widget>[
//                ElevatedButton(onPressed:() {
//             setState(() {
//               widget.number++;
//               debugPrint("${widget.number}");
//             });
//           },
//                child:const Text("Push To Increment"),
//                ),
//              const Text("Button",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.w900)
//           ),
//                 Text("${widget.number}"
//                 ,style:TextStyle(fontSize:60.0,
//                   color:widget.number>= 0 ? Colors.green:Colors.red,fontWeight: FontWeight.bold),
//               ),
//                const Text("marta bosildi!",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.w900),
//               ),
//               // BackButton(
//               //   onPressed:() {},
//               // ),
//               // CloseButton(
//               //   onPressed: (){},
//               // ),
//                TextButton(onPressed: (){}, 
//               child:TextButton(onPressed:() {
//             setState(() {
//               widget.number--;
//               debugPrint("${widget.number}");
//             });
//           },
//               child:const Text("Push To Decrement",style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,),
//               ),
//               ),  
//                ),
//             ],
//           ),
//         ),
//     );
//   }
//   // void increaseNumber(){
//   //   setState() {
//   //     widget.number ++;
//   //   }
//   //   debugPrint("${widget.number}");
//   // }

// }



