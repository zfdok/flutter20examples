import 'package:flutter/material.dart';
import 'package:flutterapp/each_view.dart';

class MybottomAppbar extends StatefulWidget {
  @override
  _MybottomAppbarState createState() => _MybottomAppbarState();
}

class _MybottomAppbarState extends State<MybottomAppbar> {
  String _title = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return EachView('新页面');
            }));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: EachView(_title),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.indigoAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _title = 'Home';
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.add_a_photo),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _title = 'photo';
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
