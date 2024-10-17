import 'package:flutter/material.dart';
import 'package:shina_shopbyme/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(// the first we returned scaffold
       // PreferredSizeWidget? appBar,
      // Widget? body,
      // Widget? floatingActionButton,
      // FloatingActionButtonLocation? floatingActionButtonLocation,
      // FloatingActionButtonAnimator? floatingActionButtonAnimator,
      // List<Widget>? persistentFooterButtons,
      // AlignmentDirectional persistentFooterAlignment = AlignmentDirectional.centerEnd,
      // Widget? drawer,
      // void Function(bool)? onDrawerChanged,
      // Widget? endDrawer,
      // void Function(bool)? onEndDrawerChanged,
      // Widget? bottomNavigationBar,   W
      // idget? bottomSheet,
      // Color? backgroundColor,
      backgroundColor: Colors.grey[300],//Scaffold have so many properties
      // and methods among them i have used background color
      body: Column( // then to the body part we gave column
        //MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
        // MainAxisSize mainAxisSize = MainAxisSize.max,
        // CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
        // TextDirection? textDirection,
        // VerticalDirection verticalDirection = VerticalDirection.down,
        // TextBaseline? textBaseline,
        // List<Widget> children = const <Widget>[]
        children: [// inside the column there always should be children
          //logo
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset("assets/images/logo.png"),//there we can see that Padding is used instead of Container We could enter both padding and child  image
          ),
          const SizedBox(
            height: 30,
          ),
          //title
          const Text(
            "Eng yaxshilari bizda!",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 23, fontFamily: "bold"),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, fixedSize: const Size(320, 50)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: const Text(
                "Sotib olish",
                style: TextStyle(fontSize: 18, fontFamily: "regular"),
              ))
          //start now button
        ],
      ),
    );
  }
}