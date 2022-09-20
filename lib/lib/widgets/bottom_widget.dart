import 'package:flutter/material.dart';
import 'package:icourse/lib/screens/home_screen.dart';

import '../screens/search_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {

  int value = 0 ;
  List x = [HomeScreen() , SearchScreen()] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        onTap: (index){
          setState(() {
            value = index ;
          });

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.white,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search , color: Colors.white), label: 'Search' ,),

        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Netflex',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: x[value],
    );
  }
}
