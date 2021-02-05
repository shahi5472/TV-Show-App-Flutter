import 'package:flutter/material.dart';
import 'package:flutter_tv_show/api/Apiz.dart';
import 'package:flutter_tv_show/models/TVShow.dart';
import 'package:flutter_tv_show/models/TVShowDetails.dart';
import 'package:flutter_tv_show/src/colors.dart';

class DetailsScreen extends StatefulWidget {
  TVShow tvShow;

  DetailsScreen({this.tvShow});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  PageController _pageController;

  TVShowDetails _tvShowDetails;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    ApiZ.getTVShowDetails(widget.tvShow.id.toString()).then((value) {
      setState(() {
        _tvShowDetails = value.tvShowDetails;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: ShowColors.purple_200,
          child: Stack(
            children: [
              _tvShowDetails == null
                  ? Container(
                      height: 200,
                    )
                  : Container(
                      height: 200,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: (index) {
                          print(index);
                        },
                        itemCount: _tvShowDetails.pictures.length,
                        itemBuilder: (BuildContext context, int position) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    '${_tvShowDetails.pictures[position] ?? ''}'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(left: 20, top: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ShowColors.colorTextPrimary,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
