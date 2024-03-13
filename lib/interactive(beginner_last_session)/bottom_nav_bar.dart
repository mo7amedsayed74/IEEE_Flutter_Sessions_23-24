import 'package:flutter/material.dart';

/*
  - The length of items must be at least two and each item's icon and label must not be null.

  - The bottom navigation bar's type changes how its items are displayed.
      If not specified, then it's automatically set to BottomNavigationBarType (fixed) when there are less than four items,
      and BottomNavigationBarType (shifting) otherwise.
*/

/*

class CustomBottomNavBar extends StatelessWidget {
  final int currentInd;
  final void Function(int) onTap;
  final List<BottomNavigationBarItem> items;

  const CustomBottomNavBar({
    super.key,
    required this.currentInd,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentInd,
      onTap: onTap,
      //selectedItemColor: Colors.red,
      //unselectedItemColor: Colors.black,
      //type: BottomNavigationBarType.fixed,
      items: items,
    );
  }
}

 */

/*
  - The NavigationBar widget's visuals are a little bit different.
     BottomNavigationBar use (Material 2) ... NavigationBar use (Material 3)
     items                                    destinations
     currentIndex                             selectedIndex
     onTap                                    onDestinationSelected
     ...                                      animationDuration
 */
class CustomNavBar extends StatelessWidget {
  final int currentInd;
  final void Function(int) onTap;
  final List<NavigationDestination> items;

  const CustomNavBar({
    super.key,
    required this.items,
    required this.onTap,
    required this.currentInd,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentInd,
      onDestinationSelected: onTap,
      //animationDuration: const Duration(milliseconds: 1000),
      destinations: items,
    );
  }
}
