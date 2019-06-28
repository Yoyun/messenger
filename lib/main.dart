import 'package:flutter/material.dart';
import 'package:messenger/page/home_page.dart';
import 'package:messenger/page/inbox_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF6386f7,
          {
            50: Color(0xFFECF0FE),
            100: Color(0xFFD0DBFD),
            200: Color(0xFFB1C3FB),
            300: Color(0xFF92AAF9),
            400: Color(0xFF7A98F8),
            500: Color(0xFF6386F7),
            600: Color(0xFF5B7EF6),
            700: Color(0xFF5173F5),
            800: Color(0xFF4769F3),
            900: Color(0xFF3556F1),
          },
        ),
      ),
      routes: {
        '/': (context) => HomePage(),
        '/inbox': (context) => InboxPage(),
      },
      initialRoute: '/',
    );
  }
}
