import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){ 
  return Scaffold(
    backgroundColor: Colors.grey[300],
    bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.grey.shade300,
      color: Colors.deepPurple.shade200,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index){
        print(index);
      },
      items: [
        Icon(Icons.favorite),
        Icon(Icons.home),
        Icon(Icons.settings),
      ],

    ),
  );
  }
}