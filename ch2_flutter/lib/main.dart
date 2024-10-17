import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'My Counter',
      theme: ThemeData(
        primarySwatch: Colors.green,
        canvasColor: Colors.lightGreen.shade100,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hello World'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
 void _updateSharedPreferences() async {
 SharedPreferences prefs = await SharedPreferences.getInstance();
 int counter = (prefs.getInt('counter') ?? 0) + 1;

 print('Pressed $counter times.');
 await prefs.setInt('counter', counter);
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title,
        style:const TextStyle(fontSize: 26.0, color:Colors.black87 ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
       body:
       Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    )
    );
    
  }
}

// class MaximumBid extends StatefulWidget{
//   MaximumBid({required this.title});
//   final String title;
//   @override
//   State<MaximumBid> createState() => _MaximumBidState();
// }
//   class _MaximumBidState extends State<MaximumBid>{
//     double _maxBid = 0.0;
//     void _increaseMyMaxBid(){
//       setState((){
//         //Add $50 to my current bid
//         _maxBid += 50.0;
//       });
//     }
//     @override ;
//     Widget build(BuildContext context){
//       return const Column(
//         children: <Widget>[
//          Text('My Maximum Bid: $_maxBid'),
//          FlatButton.icon(
//           onPressed:() => _increaseMyMaxBid(),
//           icon: Icon(Icons.add_circle),
//           label:Text('Increase Bid'),
//          ),
//         ]
//       );
//     }
//   }
/*Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              //copyWith Theme - Inherit (Extended)
            data: Theme.of(context).copyWith(cardColor: Colors.deepOrange),
              child:const Card(
                child: Text('Uniqe ThemeData'),
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),*/
/* body: Container(
        color: Colors.red.shade900,
          child:Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget>[
              Expanded(
                child:Container(
                  child:Icon(
                Icons.add_a_photo_rounded,
                size: 50.0,
                color:Colors.green.shade900,
              ),
              color:Colors.black45
                ),
                flex:5,
              ),
             Expanded(
                child:Container(
                  child:Icon(
                Icons.add_a_photo_rounded,
                size: 50.0,
                color:Colors.green.shade900,
              ),
              color:Colors.black38,
                ),
                flex:10,
              ),
              Expanded(
                child:Container(
                  child:Icon(
                Icons.add_a_photo_rounded,
                size: 50.0,
                color:Colors.green.shade900,
              ),
              color:Colors.black26,
                ),
                flex:15,
              ),
              Expanded(
                child:Container(
                  child:Icon(
                Icons.add_a_photo_rounded,
                size: 50.0,
                color:Colors.green.shade900,
              ),
              color:Colors.black12,
                ),
                flex:20,
              ),
            ]
          ),
      */