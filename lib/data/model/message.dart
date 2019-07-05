class Message {
  String message;
  bool isMine;
  bool isShowTime;
  DateTime sendTime;

  Message({
    this.message,
    this.isMine,
    this.sendTime,
    this.isShowTime = true,
  });
}
