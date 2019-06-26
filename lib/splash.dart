import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';

class SpashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashState();
  }
}

class SplashState extends State<SpashPage> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = new Timer(const Duration(seconds: 3), () {
      try {
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(
                builder: (BuildContext context) => new BossApp()),
            (Route route) => route == null);
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: new Color.fromARGB(255, 0, 215, 198),
      child: new Padding(
        padding: const EdgeInsets.only(top: 150),
        child: new Column(
          children: <Widget>[
            new Text(
              "BOSS直聘",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w800,
              ),
            )
          ],
        ),
      ),
    );
  }
}
