import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fapp/screens/homescreens/add.dart';
import 'package:fapp/screens/homescreens/home.dart';
import 'package:fapp/screens/homescreens/nearby.dart';
import 'package:fapp/screens/homescreens/orders.dart';
import 'package:fapp/screens/homescreens/profile.dart';
import 'package:flutter/material.dart';

class Mainhome extends StatefulWidget {
  const Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  final List<Widget> _navgationitems = [
    const Icon(Icons.home),
    const Icon(Icons.location_on),
    const Icon(Icons.add_circle),
    const Icon(Icons.shopping_cart),
    const Icon(Icons.person),
  ];

  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Homepage(),
    const Nearby(),
    const AddFood(),
    const Orders(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        color: Colors.red,
        items: _navgationitems,
        onTap: _onItemTapped,
      ),
    );
  }
}
