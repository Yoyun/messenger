import 'package:messenger/data/model/contact.dart';
import 'package:messenger/data/model/message.dart';

Future<List<Contact>> getContacts() async {
  await Future.delayed(Duration(milliseconds: 500));
  return [
    Contact(
        name: 'Sayed Eftiaz',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(minutes: 5)),
        havNewMsg: true,
        havNewState: false,
        avatarUris: ['assets/images/avatar_1.jpeg']),
    Contact(
        name: 'Sanjida Akter',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(minutes: 30)),
        havNewMsg: false,
        havNewState: true,
        avatarUris: ['assets/images/avatar_2.jpeg']),
    Contact(
        isGroup: true,
        name: 'Tour de Bhutan',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(hours: 1)),
        havNewMsg: true,
        havNewState: false,
        avatarUris: ['assets/images/avatar_3.png', 'assets/images/avatar_4.png']),
    Contact(
        name: 'Sayed Eftiaz',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(hours: 10)),
        havNewMsg: false,
        havNewState: true,
        avatarUris: ['assets/images/avatar_4.png']),
    Contact(
        isGroup: true,
        name: 'Sayed Eftiaz',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(days: 1)),
        havNewMsg: true,
        havNewState: false,
        avatarUris: [
          'assets/images/avatar_3.png',
          'assets/images/avatar_4.png',
          'assets/images/avatar_5.jpg'
        ]),
    Contact(
        name: 'Sayed Eftiaz',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(minutes: 5)),
        havNewMsg: false,
        havNewState: true,
        avatarUris: ['assets/images/avatar_1.jpeg']),
    Contact(
        name: 'Sanjida Akter',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(minutes: 30)),
        havNewMsg: true,
        havNewState: false,
        avatarUris: ['assets/images/avatar_2.jpeg']),
    Contact(
        isGroup: true,
        name: 'Tour de Bhutan',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(hours: 1)),
        havNewMsg: false,
        havNewState: true,
        avatarUris: ['assets/images/avatar_3.png', 'assets/images/avatar_4.png']),
    Contact(
        name: 'Sayed Eftiaz',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(hours: 10)),
        havNewMsg: true,
        havNewState: false,
        avatarUris: ['assets/images/avatar_4.png']),
    Contact(
        isGroup: true,
        name: 'Sayed Eftiaz',
        message:
            'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
        lastTime: DateTime.now().subtract(Duration(days: 1)),
        havNewMsg: false,
        havNewState: true,
        avatarUris: [
          'assets/images/avatar_3.png',
          'assets/images/avatar_4.png',
          'assets/images/avatar_5.jpg'
        ]),
  ];
}

Future<List<Message>> getMessages() async {
  await Future.delayed(Duration(milliseconds: 500));
  return [
    Message(
      message: 'Hello Sayed! what’s upp??',
      isMine: true,
      sendTime: DateTime.now().subtract(Duration(minutes: 50)),
    ),
    Message(
      message:
          'That ways we don’t be able to give any advance. Can you do a small work 2-3 hour work of the style guide? ',
      isMine: false,
      sendTime: DateTime.now().subtract(
        Duration(minutes: 40),
      ),
    ),
    Message(
      message: 'Ohh sure! How is your budget?',
      isMine: true,
      sendTime: DateTime.now().subtract(
        Duration(minutes: 30),
      ),
    ),
    Message(
      message:
          '\$400 USD. You will do Sketch right? Also, read the document properly and send the style guide  ',
      isMine: false,
      sendTime: DateTime.now().subtract(
        Duration(minutes: 20),
      ),
    ),
    Message(
      message: 'OK',
      isMine: true,
      sendTime: DateTime.now(),
    ),
    Message(
      message: 'OK',
      isMine: true,
      sendTime: DateTime.now(),
    ),
    Message(
      message: 'OK',
      isMine: true,
      sendTime: DateTime.now(),
    ),
  ];
}
