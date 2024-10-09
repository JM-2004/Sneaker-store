import 'package:flutter/material.dart';
import 'package:sneaker/components/navbar.dart';
import 'package:sneaker/pages/cart_page.dart';
import 'package:sneaker/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:
          MyBottomNavbar(onTabChange: (index) => navigateBottomBar(index)),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
      ),
      drawer: Drawer(
        
        backgroundColor: Colors.grey[800],
        child: Column(
          //logo
          children: [
            DrawerHeader(
                child: Image.asset(
              'lib/images/logo.png',
              //color: Colors.green,
            )
            ),
          //Divider(color: Colors.black),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: ListTile(
              leading: Icon(Icons.home,color: Colors.white),
              title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),),),
          ),
            
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: ListTile(
              leading: Icon(Icons.info,color: Colors.white),
              title: Text("About",style: TextStyle(color: Colors.white,fontSize: 20),),),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: ListTile(
              leading: Icon(Icons.logout,color: Colors.white),
              title: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 20),),),
          )

          
          ],
          //pages
        ),
      ),
    );
  }
}
