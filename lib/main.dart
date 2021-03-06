import 'package:deneme2/performance_page.dart';
import 'package:flutter/material.dart';

import 'camera_page.dart';
import 'food_page.dart';
import 'home_page.dart';
import 'run_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LaunchState();
  }
}

class LaunchState extends State<NavigationPage> {
  int selectedPage = 0;
  var _screens = [
    HomePage(),
    RunPage(),
    CameraPage(),
    FoodPage(),
    PerformancePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        selectedItemColor: Colors.lime,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            title: Text('Sport'),
            icon: Icon(Icons.directions_run),
          ),
          BottomNavigationBarItem(
            title: Text('Camera'),
            icon: Icon(Icons.camera_alt),
          ),
          BottomNavigationBarItem(
            title: Text('Food'),
            icon: Icon(Icons.fastfood),
          ),
          BottomNavigationBarItem(
            title: Text('Performance'),
            icon: Icon(Icons.bar_chart_outlined),
          ),
        ],
      ),
    );
  }
}
