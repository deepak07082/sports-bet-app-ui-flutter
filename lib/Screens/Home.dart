import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sportshub/Screens/selectedcatagory.dart';
import 'package:sportshub/Widgets/Catagorysports.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: size.height * 0.10,
            child: Image.asset(
              "assets/header.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CatagorySelected(),
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 70,
                        child: Image.asset(
                          "assets/freebet.png",
                        ),
                      ),
                      Text(
                        "Free Bet",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 70,
                        child: Image.asset(
                          "assets/premiumbet.jpg",
                        ),
                      ),
                      Text(
                        "Premium Bet",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 55,
                      child: SvgPicture.asset(
                        "assets/trendingbet.svg",
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Trending Bet",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              bottom: 10.0,
            ),
            child: Text(
              "Catagories",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CatagorySports(
                imgpath: "football.png",
                name: "FootBall",
                ontap: () {},
              ),
              CatagorySports(
                imgpath: "basketball.png",
                name: "Basketball",
                ontap: () {},
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CatagorySports(
                  imgpath: "boxing.png", name: "Boxing", ontap: () {}),
              CatagorySports(
                  imgpath: "hockey.png", name: "Hockey", ontap: () {}),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CatagorySports(
                  imgpath: "icehockey.png", name: "Icehockey", ontap: () {}),
              CatagorySports(
                imgpath: "volleyball.png",
                name: "Volleyball",
                ontap: () {},
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CatagorySports(
                imgpath: "football.png",
                name: "FootBall",
                ontap: () {},
              ),
              CatagorySports(
                imgpath: "boxing.png",
                name: "Boxing",
                ontap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
