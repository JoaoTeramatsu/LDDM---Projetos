import 'package:art_class/page/square.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
  ];

final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];
  @override
 Widget build (BuildContext context) {
    return Scaffold(
      body: Column (
        children: [
          
          //Stories
          Container(
            height: 150,
          child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return MyCircle(
                child: _stories[index],
              );
            }),
           ),
          //Posts
          Expanded(
          child: ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          return MySquare(
            child: _posts[index],
            );
           }),
          ), 
        ],
      ),

    );
  } 
}