import 'package:flutter/material.dart';
import 'app/component/icon_tab.dart';
import 'app/view/jobs_view.dart';
import 'app/view/message_view.dart';
import 'app/view/companys_view.dart';

class BossApp extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_CHAT = 2;
const int INDEX_MINE = 3;

class HomeState extends State<BossApp> with SingleTickerProviderStateMixin {
  TabController _controller;
  int _currentIndex = 0;
  VoidCallback _voidCallBack;
  Color primaryColor = new Color.fromARGB(255, 0, 215, 198);

  @override
  void initState() {
    super.initState();
    _controller =
        new TabController(initialIndex: _currentIndex, length: 4, vsync: this);

    _voidCallBack = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };
    _controller.addListener(_voidCallBack);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text("Android",
            style: new TextStyle(fontSize: 20.0, color: Colors.white)),
      ),
      body: new TabBarView(
        children: <Widget>[
          new JobTab(),
          new CompanyTab(),
          new MessageTab(),
          new JobTab()
        ],
        controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child:
        new TabBar(
            controller: _controller,
            indicatorSize: TabBarIndicatorSize.label,
//            labelPadding: const EdgeInsets.only(bottom: 20),
            tabs: <IconTab>[
              new IconTab(
                  text: "职位",
                  icon: _currentIndex == INDEX_JOB
                      ? "assets/images/ic_main_tab_find_pre.png"
                      : "assets/images/ic_main_tab_find_nor.png",
                  color: _currentIndex == INDEX_JOB
                      ? primaryColor
                      : Colors.grey[900]),
              new IconTab(
                  text: "公司",
                  icon: _currentIndex == INDEX_COMPANY
                      ? "assets/images/ic_main_tab_company_pre.png"
                      : "assets/images/ic_main_tab_company_nor.png",
                  color: _currentIndex == INDEX_COMPANY
                      ? primaryColor
                      : Colors.grey[900]),
              new IconTab(
                  text: "沟通",
                  icon: _currentIndex == INDEX_CHAT
                      ? "assets/images/ic_main_tab_contacts_pre.png"
                      : "assets/images/ic_main_tab_contacts_nor.png",
                  color: _currentIndex == INDEX_CHAT
                      ? primaryColor
                      : Colors.grey[900]),
              new IconTab(
                  text: "我的",
                  icon: _currentIndex == INDEX_MINE
                      ? "assets/images/ic_main_tab_my_pre.png"
                      : "assets/images/ic_main_tab_my_nor.png",
                  color: _currentIndex == INDEX_MINE
                      ? primaryColor
                      : Colors.grey[900]),
            ]),
      ),
    );
  }
}
