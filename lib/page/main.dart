import 'package:art_class/page/homepage.dart';
import 'package:art_class/page/landing_page.dart';
import 'package:art_class/page/login_page.dart';
import 'package:art_class/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    HomePage(),
    LandingPage(),
    LoginPage(),
    // Add other pages here
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home),
      const Icon(Icons.favorite),
      //const Icon(Icons.search),
      //const Icon(Icons.shopping_cart),
      const Icon(Icons.person),
    ];


    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.deepPurple.shade200,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeInOut,
          onTap: (index) => setState(() => this.index = index),
          items: items,
          index: index,
        ),
      ),
    );
  }
}