// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      print("tuing from listview dart");
    }

    final makeListTile = ListTile(
      leading: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.only(right: 12.0),
        decoration: BoxDecoration(
          border: Border(right: BorderSide(width: 1.0, color: Colors.white24)),
        ),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        "Intro to driving",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.linear_scale, color: Colors.yellow),
          Text(
            "Intermediate",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
    );

    final makeCard = Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile,
      ),
    );

    final makeBody = Container(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return makeCard;
        },
      ),
    );

    return makeBody;
  }
}
