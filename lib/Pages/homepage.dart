import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 50,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Firstpage'),
            onTap: () {
              //pop or close drawer first
              Navigator.pop(context);

              Navigator.pushNamed(context, '/firstpage');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settingpage');
            },
          )
        ]),
      ),
    );
  }
}
