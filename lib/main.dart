import 'package:flutter/material.dart';
import 'package:helloworld/Pages/homepage.dart';
import 'package:helloworld/Pages/landingpage.dart';
import 'package:helloworld/Pages/settingpage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landingpage(),
      /*routes: {
        '/homepage': (context) => Landingpage(),
        '/firstpage': (context) => Firstpage(),
        '/settingpage': (context) => Settingpage(),
      },*/
    );
  }
}
