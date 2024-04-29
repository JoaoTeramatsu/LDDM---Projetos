import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;

  MySquare({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 200,
              color: Colors.deepPurple[100],
              child: Text(
                child,
                style: TextStyle(fontSize: 40),
                ),
            ),
          );
  }
}


class MyCircle extends StatelessWidget {
    MyCircle({required this.child});
  final String child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[200],
        ),
        child: Center(child: Text(child, style: TextStyle(fontSize: 20))),
      ),
    );
  }
}