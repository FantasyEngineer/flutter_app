import 'dart:convert';
import 'package:meta/meta.dart';

class Company {
  final String logo; //log
  final String name;//公司名字
  final String location;//公司位置
  final String type;//公司类型
  final String size;//公司
  final String employee;
  final String hot;//热招职位
  final String count;
  final String inc;//公司简介

  Company({
    @required this.name,
    @required this.logo,
    @required this.location,
    @required this.type,
    @required this.hot,
    @required this.count,
    @required this.employee,
    @required this.size,
    @required this.inc,
  });

  static List<Company> fromJson(String json) {
    List<Company> _companys = [];

    JsonDecoder decoder = new JsonDecoder();
    var mapData = decoder.convert(json)['List'];
    mapData.forEach((obj) {
      Company company = new Company(
        name: obj['name'],
        logo: obj['logo'],
        location: obj['location'],
        type: obj['type'],
        hot: obj['hot'],
        size: obj['size'],
        employee: obj['employee'],
        count: obj['count'],
        inc: obj['inc'],
      );
      _companys.add(company);
    });
    return _companys;
  }
}
