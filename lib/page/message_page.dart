import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:messenger/data/model/contact.dart';
import 'package:messenger/widget/contact_widget.dart';
import 'package:messenger/data/post.dart';
import 'package:messenger/widget/message_header_widget.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<Contact> contacts;

  @override
  void initState() {
    super.initState();
    getContacts().then((value) => setState(() => contacts = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            removeTop: true,
            removeBottom: true,
            context: context,
            child: Container(
              margin: const EdgeInsets.only(top: 225),
              child: contacts == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView(
                      children: contacts
                          .map((contact) => ContactWidget(
                                contact: contact,
                                onTap: () {
                                  Navigator.pushNamed(context, '/inbox', arguments: {
                                    'title': 'hello',
                                    'contact': contact,
                                  });
                                },
                              ))
                          .toList(),
                    ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 3),
                  blurRadius: 3,
                  spreadRadius: 1,
                )
              ],
              color: Colors.red,
            ),
            width: double.maxFinite,
            height: 225,
            child: Stack(
              children: <Widget>[
                CustomPaint(
                  size: Size(double.maxFinite, 225),
                  painter: MessageHeaderWidget(
                    Color(0xFF5479F1),
                    Color(0xFF6386F7),
                    Color(0x89B882F8),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35, top: 63),
                  child: Text(
                    'Message',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 43,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 54,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 31, right: 31, bottom: 22),
                    child: TextField(
                      style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          IconData(0xe606, fontFamily: 'Messenger'),
                          color: Color(0xFF5A5A5A),
                          size: 19,
                        ),
                        contentPadding: const EdgeInsets.all(0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(54 / 2),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF0F4FF),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
