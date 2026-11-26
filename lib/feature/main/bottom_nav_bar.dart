import 'package:flutter/material.dart';
import 'package:groceries_app/feature/account/view/account_screen.dart';
import 'package:groceries_app/feature/cart/view/cart_screen.dart';
import 'package:groceries_app/feature/explore/view/explore.dart';
import 'package:groceries_app/feature/favourite/view/favourite_screen.dart';
import 'package:groceries_app/feature/home/view/home_screen.dart';
import 'package:groceries_app/feature/main/custom_nav_bar.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}