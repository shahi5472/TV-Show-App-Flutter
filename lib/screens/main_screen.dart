import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tv_show/src/colors.dart';
import 'package:flutter_tv_show/src/size_config.dart';
import 'package:flutter_tv_show/src/strings.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ShowColors.purple_500,
        title: Text(
          Strings.tv_shows_most_popular,
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 2.2,
            color: ShowColors.colorTextIcons,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              icon: Icon(
                Icons.visibility,
                color: ShowColors.colorTextIcons,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.search,
                color: ShowColors.colorTextIcons,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        color: ShowColors.purple_200,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          left: SizeConfig.widthMultiplier * 1.1,
          right: SizeConfig.widthMultiplier * 1.1,
          bottom: SizeConfig.heightMultiplier * 1,
        ),
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int position) {
            return InkWell(
              onTap: () {
                print('Click $position');
              },
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin:
                    EdgeInsets.only(top: SizeConfig.heightMultiplier * 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      color: ShowColors.colorPrimaryLight,
                      elevation: 6,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier * 1.5),
                              child: Text(
                                'The Flash',
                                style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2,
                                  color: ShowColors.colorTextIcons,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier - 5),
                              child: Text(
                                'The CW (US)',
                                style: TextStyle(
                                    color: ShowColors.colorTextOther,
                                    fontSize: SizeConfig.textMultiplier * 1.6,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier - 5),
                              child: Text(
                                '2014-10-07',
                                style: TextStyle(
                                    color: ShowColors.colorTextPrimary,
                                    fontSize: SizeConfig.textMultiplier * 1.6,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier - 5),
                              child: Text(
                                'Running',
                                style: TextStyle(
                                    color: ShowColors.holo_green_light,
                                    fontSize: SizeConfig.textMultiplier * 1.6,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 3.2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 1.5,
                      left: SizeConfig.widthMultiplier * 4.2,
                    ),
                    height: SizeConfig.heightMultiplier * 15.8,
                    width: SizeConfig.widthMultiplier * 25.5,
                    decoration: BoxDecoration(
                      color: ShowColors.colorPrimaryLight,
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://static.episodate.com/images/tv-show/thumbnail/35624.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
