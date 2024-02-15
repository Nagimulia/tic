import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tic/pages/categories.dart';
import 'package:tic/pages/home.dart';
import 'package:tic/pages/search.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late HomePage home;
  late Categories categories;
  late Search search;
  late Widget currentPage;

  @override
  void initState() {
    home = HomePage();
    search = Search();
    categories = Categories();
    pages = [home, search, categories];
    currentPage = HomePage();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          color: Colors.grey,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.category,
              color: Colors.white,
            )
          ]),
      body: pages[currentTabIndex],
    );
  }
}
