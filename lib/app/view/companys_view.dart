import 'package:flutter/material.dart';
import 'package:flutter_app/app/item/companylist_item.dart';
import 'package:flutter_app/app/model/company.dart';

class CompanyTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CompanyList();
  }
}

class CompanyList extends State<CompanyTab> {
  List<Company> _companys = [];

  @override
  void initState() {
    super.initState();
    getJobList();
  }

  void getJobList() {
    setState(() {
      _companys = Company.fromJson("""{
        "List":[
          {
            "name":"上海龙帛信息",
            "logo":"https://ss0.baidu.com/73x1bjeh1BF3odCf/it/u=37390948,4205494259&fm=85&s=96829749CE3B3A8CDA0AC019030040DB",
            "location":"上海浦东新区",
            "type":"30-40k",
            "size":"jerr",
            "employee":"Hr",
            "hot":"hot",
            "count":"hot",
            "inc":"hot"
          }
        ]
        }
      """);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      body:
          new ListView.builder(itemCount: _companys.length, itemBuilder: (BuildContext context, int index) {
            Company job = _companys[index];
            var jobItem = new InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    child: new AlertDialog(
                      content: new Text(
                        "敬请期待",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ));
              },
              child: new CompanyListItem(job),
            );
            return jobItem;
          }),
    );
  }


}
