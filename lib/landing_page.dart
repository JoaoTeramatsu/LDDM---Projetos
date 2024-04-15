import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override 
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.person),
      ],

    ),
  );
  }
}