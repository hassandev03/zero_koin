import 'package:flutter/material.dart';
import 'package:zero_koin/screens/home_screen.dart';
import 'package:zero_koin/screens/play_store_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    PlayStoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: screens[selectedIndex],
      bottomNavigationBar: null,
    );
  }
}