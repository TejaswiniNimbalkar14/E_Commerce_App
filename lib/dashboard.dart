import 'package:flutter/material.dart';
import 'package:suture_house_demo/Pages/account_page.dart';
import 'package:suture_house_demo/Pages/shop_page.dart';
import 'package:suture_house_demo/Pages/home_page.dart';
import 'package:suture_house_demo/Pages/wishlist_page.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key,}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //Bottom navigation properties
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [
    HomePage(text: 'Hello', hintText: 'Search Products', onChanged: (String value) { }),
    const ShopPage(),
    const WishlistPage(),
    const AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suture House',
            style: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold,)
        ),
        backgroundColor: Colors.orangeAccent,
        leading: const IconButton(
          icon: Icon(Icons.menu, color: Colors.black,),
          tooltip: 'Navigation Menu',
          onPressed: null,
          color: Colors.white,
        ),
        actions: const <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(Icons.add_shopping_cart, color: Colors.black,),
              tooltip: 'Shopping Cart',
              color: Colors.white,
          )
        ],
      ),

      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.store),
            label: 'Shop'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
            label: 'Wishlist'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account'
          )
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orangeAccent,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedIconTheme: const IconThemeData(),
      ),
    );
  }
}
