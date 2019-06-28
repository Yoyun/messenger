import 'package:flutter/material.dart';
import 'package:messenger/widget/avatar_widget.dart';
import 'package:messenger/data/model/contact.dart';
import 'package:common_utils/common_utils.dart';

class ContactWidget extends StatefulWidget {
  final Contact contact;
  final GestureTapCallback onTap;

  const ContactWidget({Key key, this.contact, this.onTap}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 35, right: 31, top: 16, bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AvatarWidget(widget.contact),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.contact.name,
                        style: TextStyle(
                          color: Color(0xFF252D46),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        widget.contact.message,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF9DA3B7),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(TimelineUtil.formatByDateTime(
                      widget.contact.lastTime,
                      locale: 'zh',
                      dayFormat: DayFormat.Simple,
                    )),
                    widget.contact.havNewMsg
                        ? Container(
                            margin: const EdgeInsets.only(top: 21),
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFED7F30),
                                    offset: Offset(0, 3),
                                    blurRadius: 3,
                                    spreadRadius: 0.1)
                              ],
                              borderRadius: BorderRadius.circular(18 / 2),
                              color: Color(0xFFED7F30),
                            ),
                          )
                        : Container()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
