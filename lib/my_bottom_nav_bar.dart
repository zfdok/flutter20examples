import 'package:flutter/material.dart';
import 'package:flutterapp/views/airplay_page.dart';
import 'package:flutterapp/views/email_page.dart';
import 'package:flutterapp/views/home_page.dart';
import 'package:flutterapp/views/pages_page.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myIndexPage(),
      ),
      body: myIndexPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.amberAccent,
        unselectedItemColor: Colors.amberAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
              ),
              title: Text("email")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
              ),
              title: Text("pages")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
              ),
              title: Text("airplay")),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget myIndexPage() {
    return IndexedStack(
      alignment: AlignmentDirectional.bottomCenter,
      textDirection: TextDirection.ltr,
      sizing: StackFit.expand,
      index: _currentIndex,
      children: <Widget>[
        Home(),
        Email(),
        Pages(),
        Airplay(),
      ],
    );
  }
}
