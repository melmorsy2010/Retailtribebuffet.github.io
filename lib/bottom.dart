import 'package:flutter/material.dart';

import 'Food/requestfood.dart';
import 'aboutme.dart';
import 'drink screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  List<Widget> _children = [
    DrinksScreen(),
    FoodScreen(),
    AboutMePage(),

  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.local_drink,color: Colors.brown,),
            label:  "Drink",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.food_bank_rounded,color: Colors.brown,),
            label:  "Food",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person,color: Colors.brown,),
            label:  "About me",

          ),
        ],
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('First Screen'),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Second Screen'),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Third Screen'),
    );
  }
}
