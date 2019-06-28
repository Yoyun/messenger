import 'package:flutter/material.dart';
import 'package:messenger/page/message_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          children: <Widget>[
            MessagePage(),
            Center(
                child: Icon(
              IconData(0xe604, fontFamily: 'Messenger'),
              size: 48,
            )),
            Center(
                child: Icon(
              IconData(0xe605, fontFamily: 'Messenger'),
              size: 48,
            )),
          ],
          index: currPageIndex,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, -1), blurRadius: 2, spreadRadius: 1)
            ],
          ),
          height: 91,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                color: currPageIndex == 0 ? Color(0xFF6386F7) : Color(0xFF797D9E),
                highlightColor: Color(0xFF6386F7),
                iconSize: 30,
                icon: Icon(IconData(0xe603, fontFamily: 'Messenger')),
                onPressed: () => _bottomBarItemClick(0),
              ),
              IconButton(
                color: currPageIndex == 1 ? Color(0xFF6386F7) : Color(0xFF797D9E),
                highlightColor: Color(0xFF6386F7),
                iconSize: 30,
                icon: Icon(IconData(0xe604, fontFamily: 'Messenger')),
                onPressed: () => _bottomBarItemClick(1),
              ),
              IconButton(
                color: currPageIndex == 2 ? Color(0xFF6386F7) : Color(0xFF797D9E),
                highlightColor: Color(0xFF6386F7),
                iconSize: 30,
                icon: Icon(IconData(0xe605, fontFamily: 'Messenger')),
                onPressed: () => _bottomBarItemClick(2),
              )
            ],
          ),
        ));
  }

  _bottomBarItemClick(int index) {
    if (currPageIndex == index) return;
    setState(() {
      currPageIndex = index;
    });
  }
}
