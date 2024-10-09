import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavbar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
    
          activeColor: const Color.fromARGB(255, 75, 75, 75),
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor:Colors.grey.shade100,
          tabBorderRadius: 10,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",),
            GButton(
              icon: Icons.shopping_cart_checkout_rounded,
              text: "Cart",)]),
      ),
    );
  }
}