import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TV Shows | Most Popular'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
      ),
    );
  }
}
