// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:listview_prac/screens/listview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      print("tuing -- homeView");
    }

    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text("Listview"),
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.list),
        ),
      ],
    );

    final makeBottomNav = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.blur_on,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.hotel,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: ListViewScreen(),
      bottomNavigationBar: makeBottomNav,
    );
  }
}
