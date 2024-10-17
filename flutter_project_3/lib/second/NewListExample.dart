import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class NewListExample extends StatelessWidget{
  List<AddStudent> all_students =[];
  @override
  Widget build(BuildContext context) {
    showStu_infos();
   return ListView.separated(
     separatorBuilder:(context,index){
       if(index % 5 == 0 && index != 0){
         return Container(
           color:Colors.blue,
           height:10,
         );
       }else{
         return  const Divider(
           thickness:2,
         );
       }
     },
       itemCount:50,
     itemBuilder: (context,index){
       return Card(
         color: index % 2 == 0 ? Colors.yellowAccent:Colors.greenAccent,
         elevation:20.0,
         child:ListTile(
           leading:const Icon(
             Icons.access_alarms,
           ),
           title:Text(all_students[index]._student_name),
           subtitle:Text(all_students[index]._izoh),
           trailing:const Icon(Icons.add,),
           onTap: (){
            Fluttertoast.showToast(
        msg: "This is Center Short Click Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
             //debugPrint("onTap is working!");
             alertDialogShow(context);
           },
           onLongPress: (){
            Fluttertoast.showToast(
        msg: "This is Center Long Click Toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
             debugPrint("onLongPressed is working!");
             alertDialogShow(context);
           },
         ),
       );
     }
   );
  }
 void showStu_infos(){
    all_students =List.generate(50, (index) => AddStudent("Student Number${index+1}","Student Definition ${index+1}",(index%2==0)?true:false,));
 }
 void alertDialogShow(BuildContext ctx){
    showDialog(
        context: ctx,
      barrierDismissible:true,
        builder:(ctx){
          return  AlertDialog(
            title:const Text("Alert Dialog Head Part!"),
            content:const SingleChildScrollView(
              child:ListBody(
                children:<Widget>[
                  Text(""
                      ""
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      ""
                  ),
                  Text(""
                      ""
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      "Alert Dialog Ichki Qismi \n Ikkinchi qator \n Uchinchi qator"
                      ""
                  ),
                ],
              ),
            ),
            actions:<Widget>[
              //   TextButton(
              //       onPressed:(){},
              //     child:Text("Yes"),
              //   ),
              // TextButton(onPressed:(){},
              //   child:Text("No"),
              // )
              ButtonBar(
                alignment:MainAxisAlignment.start,
                  children:<Widget>[
                    TextButton(
                        onPressed:(){
                          Navigator.of(ctx).pop();
                        },
                      child:Text("Yes"),
                    ),
                  TextButton(onPressed:(){
                    Navigator.of(ctx).pop();
                  },
                    child:Text("No"),
                  )
                  ]
                ),
            ],
          );
        },
    );
 }
}

class AddStudent{
  String _student_name ="";
  String  _izoh="";
  bool _male = true;
  AddStudent(this._student_name,this._izoh,this._male);
}
