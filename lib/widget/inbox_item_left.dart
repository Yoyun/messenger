import 'package:flutter/material.dart';
import 'package:common_utils/common_utils.dart';

class InboxItemLeft extends StatelessWidget {
  final Radius _radius = Radius.circular(73 / 2.0);
  final String message;
  final DateTime dateTime;

  InboxItemLeft({Key key, this.message = 'test', this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 31, right: 31, bottom: 16, top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          dateTime != null
              ? Container(
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    TimelineUtil.formatByDateTime(dateTime ?? DateTime.now(),locale: 'en'),
                    style: TextStyle(color: Colors.black45),
                  ),
                )
              : Container(),
          Container(
            padding: const EdgeInsets.all(73 / 3.0),
            margin: const EdgeInsets.only(right: 12),
            constraints: BoxConstraints.tightFor(),
            decoration: BoxDecoration(
                color: Color(0xFFF4F6FF),
                borderRadius: BorderRadius.only(
                  topLeft: _radius,
                  topRight: _radius,
                  bottomRight: _radius,
                )),
            child: Text(
              message,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
