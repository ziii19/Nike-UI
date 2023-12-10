import 'package:flutter/material.dart';
import 'package:nike/home/homepage.dart';
import 'package:nike/nike-produk/produk.dart';
import 'package:nike/profil/profil.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedTab = 0;

  final List _pages = [
    const HomePage(),
    const Maintence(),
    const Maintence(),
    const ProdukNike(),
    const Profile(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Like'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory), label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'About Me'),
        ],
      ),
    );
  }
}
