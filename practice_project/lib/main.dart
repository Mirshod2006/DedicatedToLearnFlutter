import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  late int index = 0;
  List<String> images = [
    'https://th.bing.com/th/id/R.1bc12fc509ca67f2cc549e8e5483b175?rik=mcX4%2bYAHW0kZrA&pid=ImgRaw&r=0',
    'https://wallpaperaccess.com/full/126154.jpg',
    'https://wallpapercave.com/wp/wp6522801.jpg',
    'https://static.businessinsider.com/image/550c6d0c6da8118d60b5030a/image.jpg',
    'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?cs=srgb&dl=road-car-vehicle-170811.jpg&fm=jpg',
    'https://wallpapercave.com/wp/wp8030431.jpg',
    'https://i1.wp.com/www.stugon.com/wp-content/uploads/2013/12/Exotic-Car-Wallpapers-HD-Edition-stugon.com-10.jpg',
    'https://www.pixelstalk.net/wp-content/uploads/2016/06/Hd-Car-wallpapers-Download.jpg',
    'https://th.bing.com/th/id/R.d07e9ae2d39ce8322db04589214dec11?rik=ATfy%2bNuznj3dqg&riu=http%3a%2f%2fcdn.wallpapersafari.com%2f51%2f13%2f5OcUPQ.jpg&ehk=MUFAOT454psmbnOJCehYpjWid7XdW%2bpIicC6hFfu48k%3d&risl=&pid=ImgRaw&r=0',
    'https://wallup.net/wp-content/uploads/2016/01/4270-Aston_Martin-car-red_cars.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Random number = Random();
                  index = number.nextInt(images.length);
                });
              },
              child: Image.network(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }}