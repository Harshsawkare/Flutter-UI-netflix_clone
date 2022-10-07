import 'package:flutter/material.dart';
import 'package:netflix_clone/comingSoon.dart';
import 'package:netflix_clone/downloads.dart';
import 'package:netflix_clone/home.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    ComingSoon(),
    Home(),
    Downloads()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[

              BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_play_sharp),
                  label: 'Coming Soon',
                  backgroundColor: Colors.black
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.black
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_circle_down),
                  label: 'Downloads',
                  backgroundColor: Colors.black
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            iconSize: 25,
            onTap: _onItemTapped,
            elevation: 0
        ),
      ),
    );
  }
}