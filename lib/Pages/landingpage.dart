import 'package:flutter/material.dart';
import 'package:helloworld/Pages/Profile.dart';
import 'package:helloworld/Pages/homepage.dart';
import 'package:helloworld/Pages/settingpage.dart';

class Landingpage extends StatefulWidget {
  Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  //this keep track of the current page to display
  int _selectedIndex = 0;

  //this method updates the new selected index
  void _navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//the pages in our app
  final List _pages = [
//firstpage
    Homepage(),
//profilepage
    Profilepage(),
//settingspage
    Settingpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottombar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Firstpage',
          ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
