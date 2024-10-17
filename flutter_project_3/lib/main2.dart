import 'package:flutter/material.dart';

class PicturesAndButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        const Text(
          "Rasmli Sahifa",
          style:TextStyle(fontSize: 23.0,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Expanded(
                child:Container(
                  margin: const EdgeInsets.all(4.0),
                  width:100.0,
                  height: 100.0,
                  color:Colors.white,
                  child:const Column(
                    children:<Widget> [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/murod_akam.jpg'),
                      ),
                      Text('Murod'),
                      Text('Xamrayev'),
                    ],

                  ),
                ),
              ),
              Expanded(
                child:Container(
                  margin:const EdgeInsets.all(4.0),
                  // width:100.0,
                  // height: 2500.0,
                  color:Colors.white,
                  child:const Column(
                    children:<Widget> [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/murod_akam.jpg'),
                      ),
                      Text('Murod'),
                      Text('Xamrayev'),
                      //      FadeInImage.assetNetwork(
                      //           placeholder: 'assets/images/mironshoh.jpg',
                      //           image: 'https://th.bing.com/th/id/R.158035b1cd302abe364708d0279fc64c?rik=JbDEzL89f67x0A&riu=http%3a%2f%2fwww.publicdomainpictures.net%2fpictures%2f50000%2fvelka%2ftree-1369547920oel.jpg&ehk=CAt2eAkhWVSFWsURnGbRBqX4veTJdyDFvUrcDV7L3iA%3d&risl=&pid=ImgRaw&r=0'
                      //       ),
                      //    // backgroundImage: NetworkImage('https://th.bing.com/th/id/R.158035b1cd302abe364708d0279fc64c?rik=JbDEzL89f67x0A&riu=http%3a%2f%2fwww.publicdomainpictures.net%2fpictures%2f50000%2fvelka%2ftree-1369547920oel.jpg&ehk=CAt2eAkhWVSFWsURnGbRBqX4veTJdyDFvUrcDV7L3iA%3d&risl=&pid=ImgRaw&r=0'),
                      //    // backgroundImage: AssetImage('assets/images/mirshod_.jpg'),
                      //  const Text('Mirshod'),
                      // const  Text('Xamrayev'),
                    ],

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin:const EdgeInsets.all(4.0),
                  width:100.0,
                  height: 100.0,
                  color:Colors.white,
                  child:const Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:<Widget> [
                      // Image.asset('assets/images/mironshoh.jpg'),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/mironshoh.jpg'),
                      ),
                      Text('Mironshoh'),
                      Text('Xamrayev'),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Expanded(
                child:Container(
                  margin: const EdgeInsets.all(4.0),
                  width:100.0,
                  height: 100.0,
                  color:Colors.black87,
                  child:const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:<Widget> [
                        Expanded(child:
                        Placeholder(
                          color:Colors.red,
                          strokeWidth: 5,
                        ),
                        ),
                        //     Image.asset('assets/images/murod_akam.jpg'),
                        //  const Text('Murod'),
                        //  const Text('Xamrayev'),
                        Text("Placeholder",style: TextStyle(color:Colors.white,fontSize:25.0),),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:Container(
                  margin: const EdgeInsets.all(4.0),
                  // width:100.0,
                  // height: 100.0,
                  color:Colors.white,
                  child:const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        FlutterLogo(
                          size:80.0,
                          style: FlutterLogoStyle.horizontal,
                          textColor:Colors.black87,

                        ),
                        //     Image.asset('assets/images/murod_akam.jpg'),
                        //  const Text('Murod'),
                        //  const Text('Xamrayev'),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        Container(
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[
                IconButton(onPressed:(){},
                  icon:const Icon(Icons.add_box,
                    color:Colors.blue,
                    size:65.0,
                  ),
                ),

              ]
          ),
        ),
      ],
    );
  }

}

