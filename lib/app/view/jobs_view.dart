import 'package:flutter/material.dart';
import 'package:flutter_app/app/item/joblist_item.dart';
import 'package:flutter_app/app/model/job.dart';

class JobTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new JobList();
  }
}

class JobList extends State<JobTab> {
  List<Job> _jobs = [];

  @override
  void initState() {
    super.initState();
    getJobList();
  }

  void getJobList() {
    setState(() {
      _jobs = Job.fromJson("""{
        "List":[
          {
            "name":"架构师",
            "cname":"蚂蚁金服",
            "size":"A轮",
            "salary":"30-40k",
            "username":"jerr",
            "title":"Hr"
          },
          {
            "name":"资深Android开发工程师",
            "cname":"今日头条",
            "size":"D轮",
            "salary":"40-60k",
            "username":"kimi",
            "title":"Hr"
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
//      appBar: new AppBar(
//        elevation: 0.0,
//        title: new Text("Android",
//            style: new TextStyle(fontSize: 20.0, color: Colors.white)),
//      ),
      body:
          new ListView.builder(itemCount: _jobs.length, itemBuilder: (BuildContext context, int index) {
            Job job = _jobs[index];
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
              child: new JobListItem(job),
            );
            return jobItem;
          }),
    );
  }


}
