import 'package:shina_shopbyme/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:shina_shopbyme/models/cart.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
        );
      },
    );
  }
}

