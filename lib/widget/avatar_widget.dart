import 'package:flutter/material.dart';
import 'package:messenger/data/model/contact.dart';

class AvatarWidget extends StatefulWidget {
  Contact contact;

  AvatarWidget(this.contact);

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.contact.isGroup) {
      if (widget.contact.avatarUris.length == 1) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(56 / 2),
            color: Colors.black12,
          ),
          width: 56,
          height: 56,
          child: CircleAvatar(
            radius: 54 / 2,
            backgroundImage: widget.contact.avatarUris[0].startsWith('http')
                ? NetworkImage(widget.contact.avatarUris[0])
                : AssetImage(widget.contact.avatarUris[0]),
          ),
        );
      } else if (widget.contact.avatarUris.length == 2) {
        return Container(
          width: 56,
          height: 56,
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56 / 3.0 * 2.0),
                  color: Colors.black12,
                ),
                width: 56 / 3.0 * 2.0,
                height: 56 / 3.0 * 2.0,
                child: CircleAvatar(
                  radius: 56 / 3.0 * 2.0 / 2 - 1,
                  backgroundImage: widget.contact.avatarUris[0].startsWith('http')
                      ? NetworkImage(widget.contact.avatarUris[0])
                      : AssetImage(widget.contact.avatarUris[0]),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.only(top: 56 / 3.0 * 2.0 / 3.0, left: 56 / 3.0 * 2.0 / 3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56 / 3.0 * 2.0 / 2.0),
                  color: Colors.white,
                ),
                width: 56 / 3.0 * 2.0,
                height: 56 / 3.0 * 2.0,
                child: CircleAvatar(
                  radius: 56 / 3.0 * 2.0 / 2 - 2,
                  backgroundImage: widget.contact.avatarUris[1].startsWith('http')
                      ? NetworkImage(widget.contact.avatarUris[1])
                      : AssetImage(widget.contact.avatarUris[1]),
                ),
              )
            ],
          ),
        );
      } else {
        return Container(
          width: 56,
          height: 56,
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 56 / 3.0 * 2.0 / 4.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56 / 3.0 * 2.0),
                  color: Colors.black12,
                ),
                width: 56 / 3.0 * 2.0,
                height: 56 / 3.0 * 2.0,
                child: CircleAvatar(
                  radius: 56 / 3.0 * 2.0 / 2 - 1,
                  backgroundImage: widget.contact.avatarUris[0].startsWith('http')
                      ? NetworkImage(widget.contact.avatarUris[0])
                      : AssetImage(widget.contact.avatarUris[0]),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 56 / 3.0 * 2.0 / 2.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56 / 3.0 * 2.0 / 2.0),
                  color: Colors.white,
                ),
                width: 56 / 3.0 * 2.0,
                height: 56 / 3.0 * 2.0,
                child: CircleAvatar(
                  radius: 56 / 3.0 * 2.0 / 2 - 2,
                  backgroundImage: widget.contact.avatarUris[1].startsWith('http')
                      ? NetworkImage(widget.contact.avatarUris[1])
                      : AssetImage(widget.contact.avatarUris[1]),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 56 / 3.0 * 2.0 / 2.0,
                  left: 56 / 3.0 * 2.0 / 2.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56 / 3.0 * 2.0 / 2.0),
                  color: Colors.white,
                ),
                width: 56 / 3.0 * 2.0,
                height: 56 / 3.0 * 2.0,
                child: CircleAvatar(
                  radius: 56 / 3.0 * 2.0 / 2 - 2,
                  backgroundImage: widget.contact.avatarUris[2].startsWith('http')
                      ? NetworkImage(widget.contact.avatarUris[2])
                      : AssetImage(widget.contact.avatarUris[2]),
                ),
              )
            ],
          ),
        );
      }
    } else {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(56 / 2),
          color: Colors.black12,
        ),
        width: 56,
        height: 56,
        child: Stack(children: [
          CircleAvatar(
            radius: 54 / 2,
            backgroundImage: widget.contact.avatarUris[0].startsWith('http')
                ? NetworkImage(widget.contact.avatarUris[0])
                : AssetImage(widget.contact.avatarUris[0]),
          ),
          widget.contact.havNewState
              ? Container(
                  margin: const EdgeInsets.only(top: 54.0 - 13, left: 54.0 - 13),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      border: Border.fromBorderSide(BorderSide(color: Colors.white)),
                      borderRadius: BorderRadius.circular(12 / 2),
                      color: Color(0xFF5FEA50)),
                )
              : Container()
        ]),
      );
    }
    ;
  }
}
