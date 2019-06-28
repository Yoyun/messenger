import 'package:flutter/material.dart';
import 'package:messenger/widget/avatar_widget.dart';
import 'package:messenger/data/model/contact.dart';
import 'package:messenger/widget/inbox_item_left.dart';
import 'package:messenger/widget/inbox_item_right.dart';
import 'package:messenger/data/model/message.dart';
import 'package:messenger/data/post.dart';

class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  Contact contact;
  List<Message> messages;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMessages().then((value) => setState(() => messages = value));
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Object> args = ModalRoute.of(context).settings.arguments;
    setState(() {
      this.contact = (args['contact'] as Contact);
    });

    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Container(
              color: Colors.white,
              margin: const EdgeInsets.only(top: 166),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: messages == null
                        ? Center(child: CircularProgressIndicator())
                        : ListView(
                            reverse: true,
                            children: messages.reversed
                                .map(
                                  (msg) => msg.isMine
                                      ? InboxItemRight(
                                          message: msg.message,
                                          dateTime: msg.sendTime,
                                        )
                                      : InboxItemLeft(
                                          message: msg.message,
                                          dateTime: msg.sendTime,
                                        ),
                                )
                                .toList(),
                          ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 26, right: 26, bottom: 51),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(77 / 2.0),
                    ),
                    height: 77,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: Material(
                            borderRadius: BorderRadius.circular(40 / 2),
                            color: Color(0xFF5479F1),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(40 / 2),
                              onTap: () {},
                              child: Container(
//                                margin: const EdgeInsets.only(left: 15),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40 / 2),
                                ),
                                child: Icon(
                                  IconData(0xe608, fontFamily: 'Messenger'),
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'Aa',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 15),
                          child: Material(
                            borderRadius: BorderRadius.circular(40 / 2),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(40 / 2),
                              onTap: () {},
                              child: Container(
//                                margin: const EdgeInsets.only(left: 15),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40 / 2),
                                ),
                                child: Icon(
                                  IconData(0xe607, fontFamily: 'Messenger'),
                                  size: 24,
                                  color: Color(0xFF494A63),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
              color: Color(0xFF6386F7),
            ),
            width: double.maxFinite,
            height: 166,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 35, left: 20),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(43 / 2),
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        alignment: Alignment.center,
                        width: 43,
                        height: 43,
                        child: Icon(
                          IconData(0xe609, fontFamily: "Messenger"),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 31, top: 85),
                  child: Text(
                    contact.name,
                    style: TextStyle(
                      fontSize: 29,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.only(left: 31, bottom: 20),
                  child: Text(
                    'Manager',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 39, bottom: 34),
                  alignment: Alignment.bottomRight,
                  child: AvatarWidget(contact),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
