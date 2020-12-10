import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mypage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: TextStyle(color: Colors.blue[900], fontSize: 30)),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 10),
          icon: Icon(
            Icons.menu,
            color: Colors.blue[900],
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
              padding: const EdgeInsets.only(right: 20),
              icon: Icon(
                Icons.search,
                color: Colors.blue[900],
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => MyPage()));
              })
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
