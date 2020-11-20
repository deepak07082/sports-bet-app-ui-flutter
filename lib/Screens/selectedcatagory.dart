import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sportshub/Screens/Home.dart';
import 'package:sportshub/Widgets/questions.dart';
import 'package:sportshub/tabs/local.dart';
import 'package:sportshub/tabs/trending.dart';
import 'package:sportshub/tabs/upcoming.dart';
import 'package:sportshub/tabs/worldcup.dart';

import 'Mybet.dart';

class CatagorySelected extends StatelessWidget {
  @override
  TabController _controller;
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(

          title: const Text(
            'DDSports Hub',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
          backgroundColor: Colors.blue[400],
          //elevation: 0,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.green,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(text: "Trending"),
              Tab(text: "Upcoming"),
              Tab(text: "Worldcup"),
              Tab(text: "Local"),
            ],
          ),
        ),
        body: TabBarView(

          children: [
            Questions(),
            trending(),
            Upcoming(),
            Worldcup(),
            Local(),
          ],
        ),
      ),
    );
  }
}

class Questions extends StatefulWidget {
  Questions({Key key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List<Questionslist> _questionslist = Questionslist.questions;
  int t1 = 0;
  int t2 = 0;
  double percent = 0.1;
  int qus = 1;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Premier League",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 30,
              right: 30,
              bottom: 25,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  // color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2, 3),
                    ),
                  ]),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/giphy.gif",
                      height: 40,
                    ),
                    Text("VS"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/t1.jpg",
                            height: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "${t1}",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${t2}",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/t2.jpg",
                          height: 50,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25.0,
                        bottom: 10,
                      ),
                      child: LinearPercentIndicator(
                        lineHeight: 5,
                        percent: percent,
                        progressColor: Colors.green,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      "${qus} of 10",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 8,
                        right: 8,
                        bottom: 10,
                      ),
                      child: Text(
                        "${_questionslist[count].ques}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlineButton(
                            splashColor: Colors.blueAccent,
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              setState(() {
                                if (percent <= 0.9) {
                                  percent += 0.1;
                                  qus += 1;
                                  count += 1;
                                  print(percent);
                                } else {
                                  return showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                            title: Text("Success"),
                                            content: Text(
                                                "Quiz task completed please visit tomorrow 9 AM"),
                                            actions: [
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                },
                                                child: Text("Ok"),
                                              )
                                            ],
                                          ));
                                }
                              });
                            },
                            child: Text("Yes"),
                            shape: StadiumBorder(),
                          ),
                          OutlineButton(
                            splashColor: Colors.blueAccent,
                            onPressed: () {
                              setState(() {
                                 if (percent <= 0.9) {
                                  percent += 0.1;
                                  qus += 1;
                                  count += 1;
                                  print(percent);
                                } else {
                                  return showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                            title: Text("Success"),
                                            content: Text(
                                                "Quiz task completed please visit tomorrow 9 AM"),
                                            actions: [
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                },
                                                child: Text("Ok"),
                                              )
                                            ],
                                          ));
                                }
                              });
                            },
                            child: Text("No"),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                            shape: StadiumBorder(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
