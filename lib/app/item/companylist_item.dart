import 'package:flutter/material.dart';
import 'package:flutter_app/app/model/company.dart';

class CompanyListItem extends StatelessWidget {
  final Company company;

  CompanyListItem(this.company);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding:
          const EdgeInsets.only(top: 2.0, left: 5.0, right: 5.0, bottom: 3.0),
      child: new Card(
        margin: const EdgeInsets.only(top: 5),
        elevation: 0.0,
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 0, top: 10),
              child: new CircleAvatar(
                radius: 20.0,
                backgroundImage: new NetworkImage(company.logo),
              ),
            ),
            new Expanded(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                  child: new Text(
                    company.name,
                    textAlign: TextAlign.left,
                    style: new TextStyle(fontSize: 15),
                  ),
                  margin: const EdgeInsets.only(top: 10, bottom: 5),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                  child: new Text(
                    company.location ,
                    style: new TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                  child: new Text(
                    company.type +
                        " | " +
                        company.size +
                        " | " +
                        company.employee,
                    style: new TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                  child: new Text(
                    company.hot,
                    style: new TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
