import 'package:flutter/material.dart';
import 'main.dart';
class NavigationSamples extends StatelessWidget{
  NavigationSamples({super.key});
  List<String> image=['https://th.bing.com/th/id/OIP.87rC-vQdkf1I5qv74_2LjwHaHp?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.13750dc26dfcf65fea74e749eb36e108?rik=vFSj%2ffPmnc6UWg&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.562708c94c63b59e49c7e168c041afe5?rik=n1PulW3yqgOwrA&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.638072b6243b7f897ed1db08f34b318a?rik=SItf294Hi3XCTA&riu=http%3a%2f%2fmedia.cntraveler.com%2fphotos%2f554a497929d479ab28bfb03b%2fmaster%2fpass%2fspring_flowers_2015_longwood_cr_Longwood+Gardens+L+Albee.jpg&ehk=B2TKtnG0%2b3u0wdUZiZJ65FQfVhHE3dae778OQSTIAEU%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.010edbcb0206d4bc24ddcccd1fc307cd?rik=vyYRWmr9OvrOsA&riu=http%3a%2f%2fallpicts.in%2fwp-content%2fuploads%2f2015%2f07%2fBeautiful-Nature-Wallpaper-with-Two-Lotus-Flowers-in-Pink.jpg&ehk=fAzo4nd97vUOJugZ9Y5IT5Ia5JhQC9fK0yQxLVJS1iA%3d&risl=&pid=ImgRaw&r=0',
    'https://i2.wp.com/youmeandtrends.com/wp-content/uploads/2015/11/beautiful-flowers-pictures-free-download.jpg',
    'https://www.goodfreephotos.com/albums/plants/violet-flower.jpg',
    'https://www.thespruce.com/thmb/SiO7HQpE-6kFDbwpTz6CKNGO1Rw=/2119x1415/filters:fill(auto,1)/GettyImages-971582964-ee0f28aa66b04fb1a54171fa4bdee7a6.jpg',
    'https://th.bing.com/th/id/R.a2cc57914d773f112b2620dee8d01af5?rik=3jtpUmaWQCN7nA&riu=http%3a%2f%2fcdn.wallpapersafari.com%2f45%2f79%2fsWKTMU.jpg&ehk=S3logq8lFdVwhBmvY5sr7J1pE7emXVQcnR9y%2bShVG%2fA%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.wNO4pN5l7TJjS8ZPjuZoiAHaF7?pid=ImgDet&w=474&h=379&rs=1',
    'https://th.bing.com/th/id/R.98f456e366477b41507e2edb6ef77789?rik=RwV%2b0eTuN8Dy7g&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fcE3Log5.jpg&ehk=p9yZQCqK1ZrbgN6R1Y8p%2fAk9HzGbIAg9JL9bwT6Fc9g%3d&risl=&pid=ImgRaw&r=0',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('This is title for second page!'),
        ),
        drawer: NavBar(),*/
        body:/*GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("He'd have you all unravel at the"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Heed not the rabble'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Sound of screams but the'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Who scream'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: const Text('Revolution is coming...'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Revolution, they...'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("He'd have you all unravel at the"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Heed not the rabble'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Sound of screams but the'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Who scream'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: const Text('Revolution is coming...'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Revolution, they...'),
            ),
          ],
        )*/
        GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
                children:List<Widget>.generate(image.length, (int index){
                  return GridTile(
                    child:Card(
                      color:Colors.white70,
                      elevation:10.0,
                      shadowColor:Colors.blue,
                      child:Image.network(image[index]),
                    ),
                  );
                }
                ),
              ),
              // ElevatedButton(onPressed: (){
              //   Navigator.push(context, MaterialPageRoute(builder:(context) =>const TurnToAnotherPage(),
              //   ),
              //   );
              // },
              //   child:const Text(
              //   "Tap the Button",
              //   style:TextStyle(color:Colors.redAccent,fontSize:25,
              //   fontWeight:FontWeight.w700)
              // ),),
      );
  }
}
 class TurnToAnotherPage extends StatefulWidget {
  const TurnToAnotherPage({super.key});

   @override
   State<StatefulWidget> createState() {
     return TurnToAnotherPageState();
   }
 }
 class TurnToAnotherPageState extends State<TurnToAnotherPage>{
  TurnToAnotherPageState();
  List<String> image=['https://th.bing.com/th/id/OIP.87rC-vQdkf1I5qv74_2LjwHaHp?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.13750dc26dfcf65fea74e749eb36e108?rik=vFSj%2ffPmnc6UWg&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.562708c94c63b59e49c7e168c041afe5?rik=n1PulW3yqgOwrA&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.638072b6243b7f897ed1db08f34b318a?rik=SItf294Hi3XCTA&riu=http%3a%2f%2fmedia.cntraveler.com%2fphotos%2f554a497929d479ab28bfb03b%2fmaster%2fpass%2fspring_flowers_2015_longwood_cr_Longwood+Gardens+L+Albee.jpg&ehk=B2TKtnG0%2b3u0wdUZiZJ65FQfVhHE3dae778OQSTIAEU%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.010edbcb0206d4bc24ddcccd1fc307cd?rik=vyYRWmr9OvrOsA&riu=http%3a%2f%2fallpicts.in%2fwp-content%2fuploads%2f2015%2f07%2fBeautiful-Nature-Wallpaper-with-Two-Lotus-Flowers-in-Pink.jpg&ehk=fAzo4nd97vUOJugZ9Y5IT5Ia5JhQC9fK0yQxLVJS1iA%3d&risl=&pid=ImgRaw&r=0',
    'https://i2.wp.com/youmeandtrends.com/wp-content/uploads/2015/11/beautiful-flowers-pictures-free-download.jpg',
    'https://www.goodfreephotos.com/albums/plants/violet-flower.jpg',
    'https://www.thespruce.com/thmb/SiO7HQpE-6kFDbwpTz6CKNGO1Rw=/2119x1415/filters:fill(auto,1)/GettyImages-971582964-ee0f28aa66b04fb1a54171fa4bdee7a6.jpg',
    'https://th.bing.com/th/id/R.a2cc57914d773f112b2620dee8d01af5?rik=3jtpUmaWQCN7nA&riu=http%3a%2f%2fcdn.wallpapersafari.com%2f45%2f79%2fsWKTMU.jpg&ehk=S3logq8lFdVwhBmvY5sr7J1pE7emXVQcnR9y%2bShVG%2fA%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.wNO4pN5l7TJjS8ZPjuZoiAHaF7?pid=ImgDet&w=474&h=379&rs=1',
    'https://th.bing.com/th/id/R.98f456e366477b41507e2edb6ef77789?rik=RwV%2b0eTuN8Dy7g&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fcE3Log5.jpg&ehk=p9yZQCqK1ZrbgN6R1Y8p%2fAk9HzGbIAg9JL9bwT6Fc9g%3d&risl=&pid=ImgRaw&r=0',
  ];
  Widget _smallimageBox(BuildContext context,int index){
    return Container(
      width:75,
      height:75,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(10.0),
      ),
      child:Image.network(image[index] as String,
      fit:BoxFit.cover,),
    );
  }
  Widget _bigimageBox(BuildContext context,int index){
    return Container(
      width:400,
      height:400,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(15.0),
      ),
      child:Image.network(image[index] as String,
      fit:BoxFit.fill,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('Stored pictures',
          style:TextStyle(color:Colors.black87,
              fontWeight:FontWeight.bold),
        ),
        backgroundColor:Colors.purple.shade200,
      ),
      body:Center(
        child:ListView(
          children:List<Widget>.generate(image.length, (int index){
            final Key n1 = GlobalKey();
            return Padding(
              padding:const EdgeInsets.all(8.0),
              child:ListTile(
                leading:GestureDetector(
                  key:n1,
                  child:Hero(
                    tag:index.toString(),
                    child:_smallimageBox(context, index),
                  ),
                  onTap:()=> _fullImagePage(context, index.toString(), index),
                ),
                title:const Text('Tap for transition',
                style:TextStyle(fontSize:20.0,fontWeight:FontWeight.bold),),
              ),
            );
          })
        ),
      ),
    );
  }
  void _fullImagePage(BuildContext context,String tag,int index) {
    Navigator.of(context).push(MaterialPageRoute(builder:
    (BuildContext ctx) => Scaffold(
      appBar:AppBar(
        title:const Text(
          'Big Image'
        ),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Hero(
              tag: tag,
              child:_bigimageBox(context, index),
            ),
          ],
        ),
      ),
    ),
    ));
  }
 }