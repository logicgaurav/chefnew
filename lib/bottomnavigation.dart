import 'package:chefbox/Screen1.dart';
import 'package:chefbox/bal1.dart';
import 'package:chefbox/hola.dart';
import 'package:chefbox/jiku.dart';
import 'package:chefbox/jiu.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    final List<Widget> _children = [MainScreen(title: 'Chef4You',),  bangScreen(),  jiuScreen(), SettingsScreen(),  holaScreen()];

    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 253, 235, 241),
      body: _children[_currentIndex],
      extendBody: true, // new
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bodyContent {
    return Container(
        color: Colors.white);
    
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
      ),
      child: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.black),
      iconSize: 44.0,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/off11.png"),
              // size: 25,
             color: Colors.amber,
            ),
            // ignore: deprecated_member_use
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/off1.png"),
              color: Colors.amber,
              //  size: 35,
            ),
            // ignore: deprecated_member_use
            label: "",
          ),
          new BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/off2.png"),
              color: Colors.amber,
              //  size: 35,
            ),
            // ignore: deprecated_member_use
            label: "",
          ),
              new BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/off66.png"),
              color: Colors.amber,
              //  size: 35,
            ),
            // ignore: deprecated_member_use
            label: "",
          ),
          new BottomNavigationBarItem(
           icon: ImageIcon(
              AssetImage("images/off.png"),
              color: Colors.amber,
              //  size: 35,
            ),
            // ignore: deprecated_member_use
            label: "",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
