import 'package:flutter/material.dart';
import 'package:flutter_tv_show/models/TVShow.dart';

class DetailsScreen extends StatefulWidget {
  TVShow tvShow;

  DetailsScreen({this.tvShow});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
