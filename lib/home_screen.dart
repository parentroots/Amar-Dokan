import 'package:amar_dokan/bottom_nav_screen/cart_fragment.dart';
import 'package:amar_dokan/bottom_nav_screen/favourite_fragment.dart';
import 'package:amar_dokan/bottom_nav_screen/home_fragment.dart';
import 'package:amar_dokan/bottom_nav_screen/profile_fragment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex=0;


  final List<Widget>_pages=[
    HomeFragment(),
    FavouriteFragment(),
    CartFragment(),
    ProfileFragment(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (int index){

          setState(() {
            _currentIndex=index;
          });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items:[
            BottomNavigationBarItem( icon: Icon(Icons.home),label:"Home"),
            BottomNavigationBarItem( icon: Icon(Icons.favorite),label:"Favourite"),
            BottomNavigationBarItem( icon: Icon(Icons.shopping_cart),label:"Cart"),
            BottomNavigationBarItem( icon: Icon(Icons.person),label:"Profile"),
          ]
    ),



    );
  }
}
