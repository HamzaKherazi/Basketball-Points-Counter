import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  @override
  State<BasketballPointsCounter> createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int teamACount = 0;
  int teamBCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFFA203),
          title: Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Team A", style: TextStyle(fontSize: 32)),
                      Text("$teamACount", style: TextStyle(fontSize: 120)),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamACount++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFA203),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          minimumSize: Size(100, 45),
                        ),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamACount += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFA203),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          minimumSize: Size(100, 45),
                        ),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamACount += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFA203),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          minimumSize: Size(100, 45),
                        ),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 1.5,
                    color: Colors.grey,
                    indent: 10,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Team B", style: TextStyle(fontSize: 32)),
                      Text("$teamBCount", style: TextStyle(fontSize: 120)),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBCount++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFA203),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          minimumSize: Size(100, 45),
                        ),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBCount += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFA203),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          minimumSize: Size(100, 45),
                        ),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBCount += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFA203),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          minimumSize: Size(100, 45),
                        ),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamACount = 0;
                  teamBCount = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFA203),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                minimumSize: Size(100, 45),
              ),
              child: Text("Reset", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
