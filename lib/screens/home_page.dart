import 'package:flutter/material.dart';
import 'package:flutter_create_madshop_ui_sopina/screens/cart_page.dart';
import 'package:flutter_create_madshop_ui_sopina/screens/favourite_page.dart';
import 'package:flutter_create_madshop_ui_sopina/screens/shop_page.dart';
import 'package:flutter_create_madshop_ui_sopina/widgets/app_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeWithBottomNavState();
}

class _HomeWithBottomNavState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    ShopPage(),
    FavouritePage(),
    CartPage(),
  ];

  void _onTabSelected(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: SafeArea(
        child: AppNavigation(
            currentIndex: _currentIndex,
            onTabSelected: _onTabSelected,
          ),
      ),
    );
  }
}