import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Color.fromRGBO(112, 193, 255, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 50),
                Text(
                  "Smart Parkir",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("nama"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("nama"),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "A3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  locParkir('1'),
                  locParkir('1'),
                  locParkir('1'),
                  locParkir('1'),
                  locParkir('1'),
                ],
              ),
              Column(
                children: [
                  locParkir('2'),
                  locParkir('2'),
                  locParkir('2'),
                  locParkir('2'),
                  locParkir('2'),
                ],
              ),
            ],
          ),
          SizedBox(height: 60),
          Text("Lihat Parkir")
        ],
      ),
    );
  }

  Padding locParkir(String status) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
            child: Align(
              child: Text(
                status,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
