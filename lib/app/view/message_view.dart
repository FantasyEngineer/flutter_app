import 'package:flutter/material.dart';
import 'package:flutter_app/app/item/messagelist_item.dart';
import 'package:flutter_app/app/model/message.dart';

class MessageTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MessageList();
  }
}

class MessageList extends State<MessageTab> {
  List<Message> _msgs = [];

  @override
  void initState() {
    super.initState();
    getMessageList();
  }

  void getMessageList() {
    setState(() {
      _msgs = Message.fromJson("""{
        "List":[{
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },
            {
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },
            {
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },
            {
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },{
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },{
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },{
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },{
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },{
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            },{
            "avatar":"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=829044612,3699393036&fm=27&gp=0.jpg",
            "name":"小可爱",
            "company":"百度",
            "position":"HR",
            "msg":"你好"         
            }]
        }""");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
//      appBar: new AppBar(
//        elevation: 0.0,
//        title: new Text("Android",
//            style: new TextStyle(fontSize: 20.0, color: Colors.white)),
//      ),
      body: new ListView.builder(
          itemCount: _msgs.length, itemBuilder: buildMeaageItem),
    );
  }

  Widget buildMeaageItem(BuildContext context, int index) {
    Message msg = _msgs[index];
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
      child: new MessageListItem(msg),
    );
    return jobItem;
  }
}
