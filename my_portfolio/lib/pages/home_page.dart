import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.green[300],
          ),
        ],
      ),
    );
  }
}