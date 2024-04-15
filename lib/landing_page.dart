import 'package:art_class/login_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';// Substitua "your_project_name" pelo nome do seu projeto

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _pageIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade300,
        color: Colors.deepPurple.shade200,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _pageIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.person),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        itemBuilder: (context, index) {
          if (index == 2) {
            // Se for a terceira página (index 2), exibe a página de login
            return LoginPage();
          } else {
            // Caso contrário, exibe uma página padrão
            return Container(
              color: Colors.grey.shade300,
              child: Center(
                child: Text('Page ${index + 1}'),
              ),
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
