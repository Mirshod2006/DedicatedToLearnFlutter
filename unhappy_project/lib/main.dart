import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:unhappy_project/NavBar.dart';
import 'package:unhappy_project/pages/botton_navigation_bar.dart';
import 'package:unhappy_project/pages/header_page.dart';
import 'Navigation.dart';

Future main() async {
  await Settings.init(cacheProvider:SharePreferenceCache());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Settings.getValue<bool>(HeaderPage.keyDarkMode,defaultValue: true);
    return ValueChangeObserver<bool>(cacheKey:HeaderPage.keyDarkMode, defaultValue:true,
      builder:(_,isDarkMode,__){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme:isDarkMode ? ThemeData.dark().copyWith(
              primaryColor: Colors.black54,
              canvasColor: Colors.black54,
              scaffoldBackgroundColor: Colors.black54,
            )
                : ThemeData.light().copyWith(
                primaryColor: Colors.white, canvasColor: Colors.white),
            home: const MyHomePage(title: 'Galary Store'),
          );
      }
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

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(_)=>SearchPage(),
            ),
            );
          },
          icon:const Icon(Icons.search,)
          ),
        ],
        title: Text(widget.title),
      ),
        drawer: const NavBar(),
        bottomNavigationBar:MyButtonNavigationBar(onTabChange: (BuildContext context) {}, onTapChange: (index) {  },),
        body: NavigationSamples(),
    );
  }
}

class SearchPage extends MyApp{
  SearchPage({super.key});

  final isDarkMode = Settings.getValue<bool>(HeaderPage.keyDarkMode,defaultValue: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Container(
          width:double.infinity,
          height:40,
          decoration:BoxDecoration(
            color:Colors.black,//:Colors.white,
            borderRadius:BorderRadius.circular(5),
          ),
          child:Center(
            child:TextField(
              decoration:InputDecoration(
                prefixIcon:Icon(Icons.search),
                  suffixIcon:IconButton(onPressed:(){
                  }, icon:Icon(Icons.clear),
                  ),
                hintText:"Search..",
                hintStyle:TextStyle(color:Colors.black87,),
                border:InputBorder.none),
              ),
            ),
          ),
        ),
    );
  }

}