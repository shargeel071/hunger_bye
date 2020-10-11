import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnerHomePage extends StatefulWidget {
  @override
  _PartnerHomePageState createState() => _PartnerHomePageState();
}

class _PartnerHomePageState extends State<PartnerHomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Product',
      style: optionStyle,
    ),
    Text(
      'Index 1: Request',
      style: optionStyle,
    ),
    Text(
      'Index 2: All Requests',
      style: optionStyle,
    ),
    Text(
      'Index 3: Offers',
      style: optionStyle,
    ),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('HungerBye'),
        backgroundColor: Color(0xff20409A),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Product'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Request'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('All Requests'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Offers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
