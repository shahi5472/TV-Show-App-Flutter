import 'package:flutter/material.dart';
import 'package:flutter_tv_show/screens/main_screen.dart';
import 'package:flutter_tv_show/src/size_config.dart';
import 'package:flutter_tv_show/src/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: Strings.app_name,
              home: MainScreen(),
            );
          },
        );
      },
    );
  }
}
