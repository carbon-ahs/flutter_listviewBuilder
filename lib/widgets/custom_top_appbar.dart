import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("ListView Parctice"),
      backgroundColor: Colors.red,
      centerTitle: true,
    );
  }
}
