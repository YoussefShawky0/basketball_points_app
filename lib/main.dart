import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int team1 = 0;
  int team2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Basketball Points App',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 500,
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team 1',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('$team1', style: TextStyle(fontSize: 100)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(12),
                              backgroundColor: Colors.deepOrange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                team1 += 1;
                              });
                            },
                            child: Text(
                              '+1',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(12),
                              backgroundColor: Colors.deepOrange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                team1 += 2;
                              });
                            },
                            child: Text(
                              '+2',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(12),
                              backgroundColor: Colors.deepOrange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                team1 += 3;
                              });
                            },
                            child: Text(
                              '+3',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 500,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: VerticalDivider(
                        color: Colors.deepOrange,
                        thickness: 4,
                        width: 20,
                        indent: 50,
                        endIndent: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 170,
                      height: 500,
                      padding: EdgeInsets.only(top: 15, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team 2',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('$team2', style: TextStyle(fontSize: 100)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(10),
                              backgroundColor: Colors.deepOrange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                team2 += 1;
                              });
                            },
                            child: Text(
                              '+1',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(7),
                              backgroundColor: Colors.deepOrange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                team2 += 2;
                              });
                            },
                            child: Text(
                              '+2',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(7),
                              backgroundColor: Colors.deepOrange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                team2 += 3;
                              });
                            },
                            child: Text(
                              '+3',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    team1 = 0;
                    team2 = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
