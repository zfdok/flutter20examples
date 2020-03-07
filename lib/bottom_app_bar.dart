import 'package:flutter/material.dart';
import 'package:flutterapp/each_view.dart';

class MyBottomAppBar extends StatefulWidget {
  @override
  _MyBottomAppBarState createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  String _title = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EachView("新页面");
          }));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: EachView(_title),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigoAccent,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  this._title = "home";
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  this._title = "airplay";
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
