import 'package:appy/widgets/favorite_widgets.dart';
import 'package:appy/widgets/home_widget.dart';
import 'package:appy/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _myWidgets = <Widget>[
    Homewidget(),
    Favoritewidget(),
    ProfileWidget(),
  ];

  static const List<Widget> _myAppBarTitle = <Widget>[
    Text(
      'Home',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Favorite',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Profile',
      style: TextStyle(color: Colors.black),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 159, 202, 238),
        centerTitle: true,
        title: _myAppBarTitle[_selectedIndex],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.redAccent,
      ),
      body: _myWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
