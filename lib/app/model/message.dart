import 'dart:convert';
import 'package:meta/meta.dart';

class Message {
  final String name;
  final String avatar;
  final String company;
  final String position;
  final String msg;

  Message({
    @required this.name,
    @required this.avatar,
    @required this.company,
    @required this.position,
    @required this.msg,
  });

  static List<Message> fromJson(String json) {
    List<Message> _job = [];

    JsonDecoder decoder = new JsonDecoder();
    var mapData = decoder.convert(json)['List'];
    mapData.forEach((obj) {
      Message msg = new Message(
        name: obj['name'],
        avatar: obj['avatar'],
        company: obj['company'],
        position: obj['position'],
        msg: obj['msg'],);
      _job.add(msg);
    });
    return _job;
  }
}
