import 'package:flutter/material.dart';
import 'package:lumore/components/bottomnav.dart';
import 'package:lumore/components/home_appbar.dart';
import 'package:lumore/components/homescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  // Callback function to update the index when a tab is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    Center(child: Home()),
    const Center(child: Text('Search Page Content')),
    const Center(child: Text('Favorites Page Content')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),

      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}