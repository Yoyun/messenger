import 'package:flutter/material.dart';
import 'package:common_utils/common_utils.dart';

class InboxItemRight extends StatelessWidget {
  final Radius _radius = Radius.circular(73 / 2.0);
  final String message;
  final DateTime dateTime;

  InboxItemRight({Key key, this.message = '10', this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 31, right: 31, bottom: 16,top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(TimelineUtil.formatByDateTime(dateTime ?? DateTime.now())),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(73 / 3.0),
              margin: const EdgeInsets.only(left: 12),
              decoration: BoxDecoration(
                  color: Color(0xFF5479F1),
                  borderRadius: BorderRadius.only(
                    topRight: _radius,
                    topLeft: _radius,
                    bottomLeft: _radius,
                  )),
              child: Text(
                message,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
