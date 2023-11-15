// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.redAccent,
        borderOnForeground: true,
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 84,
                  child: CircleAvatar(
                    // backgroundColor: Colors.white,
                    radius: 80,
                    backgroundImage: NetworkImage(
                        "https://www.onedirectionglobal.com/static/img/White-Logo.png"),
                  ),
                ),
              ),
              Text("ODCL"),
              Text("ODCL fghfgj xfghsdth lorem50"),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Welcome"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
