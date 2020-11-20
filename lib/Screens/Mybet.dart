import 'package:flutter/material.dart';
import 'package:sportshub/Models/pastbetlist.dart';
import 'package:sportshub/Screens/Home.dart';
import 'package:sportshub/tabs/placedbet.dart';

class MyBet extends StatefulWidget {
  @override
  _MyBetState createState() => _MyBetState();
}

class _MyBetState extends State<MyBet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Bets',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[400],
          //elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                text: "Placed Bets",
              ),
              Tab(text: "Past Bets")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Placedbet(),
            PlacedBet(),
          ],
        ),
      ),
    );
  }
}

class PlacedBet extends StatefulWidget {
  PlacedBet({Key key}) : super(key: key);

  @override
  _PlacedBetState createState() => _PlacedBetState();
}

class _PlacedBetState extends State<PlacedBet> {
  int t1 = 0, t2 = 1;
  List<PastBets> pastbet = PastBets.mybets;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 400,
            margin: EdgeInsets.all(6),
            child: ListView.builder(
              itemCount: pastbet.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15),
                          // color: Colors.blue,
                          boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2, 3),
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue[200],
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "${pastbet[index].imgt1}",
                                  height: 50,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "VS",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "${pastbet[index].t1goals} - ${pastbet[index].t2goals}",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green[300],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        "${pastbet[index].result}",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                "${pastbet[index].imgt2}",
                                height: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
