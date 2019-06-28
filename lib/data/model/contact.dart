class Contact {
  String name;
  String message;
  DateTime lastTime;
  bool havNewMsg;
  bool havNewState;
  String avatarUri;
  bool isGroup;
  List<String> avatarUris;

  Contact({
    this.name,
    this.message,
    this.lastTime,
    this.havNewMsg,
    this.havNewState,
    this.avatarUri,
    this.isGroup = false,
    this.avatarUris,
  });
}
