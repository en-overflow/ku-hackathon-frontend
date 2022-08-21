import 'package:demo_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../dummy_data.dart';
import '../models/lecture_detail.dart';
import '../widgets/appbar.dart';
import 'class_list_search_screen.dart';

class ClassListScreen extends StatefulWidget {
  static const routeName = '/class-list';

  @override
  State<ClassListScreen> createState() => _ClassListScreenState();
}

class _ClassListScreenState extends State<ClassListScreen> {
  List<LectureDetail> lectureList = DUMMY_LECTURE_DETAIL;

  List<String> adPhotoList = [
    'assets/images/adphoto10.png',
    'assets/images/adphoto5.png',
    'assets/images/adphoto8.png',
    'assets/images/adphoto11.png',
    'assets/images/adphoto12.png',
    'assets/images/adphoto16.png',
    'assets/images/adphoto13.png',
    'assets/images/adphoto4.jpg',
    'assets/images/adphoto9.jpg',
    'assets/images/adphoto17.png',
    'assets/images/adphoto14.png',
    'assets/images/adphoto15.png',
    'assets/images/adphoto18.png',
    'assets/images/adphoto3.png',
    'assets/images/adphoto6.png',
    'assets/images/adphoto7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarHome(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: 30,
          bottom: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTopButton(context, '찾기', ClassListSearchScreen.routeName),
                _buildTopButton(context, '분류', ClassListSearchScreen.routeName),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.white,
                    child: _buildsliderWidget(
                      context,
                      adPhotoList,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      '근처 강좌',
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Dongle',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/map.png',
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth,
                      ),
                      _buildLocationIcon(context, 40, 100, lectureList[0]),
                      _buildLocationIcon(context, 200, 200, lectureList[1]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTopButton(BuildContext context, String title, String routeName) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(routeName);
    },
    child: Container(
      width: MediaQuery.of(context).size.width / 2 - 30,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).hoverColor,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
          fontFamily: 'Dongle',
        ),
      ),
    ),
  );
}

// Widget _buildListItem(String title) {
//   return Container(
//     child: Row(
//       children: [
//         Image.asset(
//           'assets/images/item1.png',
//           width: 100,
//         ),
//         Text(title),
//       ],
//     ),
//   );
// }

Widget _buildLocationIcon(BuildContext context, double right, double bottom,
    LectureDetail lectureDetail) {
  return Positioned(
    right: right,
    bottom: bottom,
    child: IconButton(
      onPressed: () async {
        // Navigator.pushNamed(
        //   context,
        //   DetailScreen.routeName,
        //   arguments: classId,
        // );
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text(
                "${lectureDetail.title}",
                style: TextStyle(fontSize: 40),
              ),
              content: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailScreen.routeName,
                    arguments: lectureDetail.classId,
                  );
                },
                child: Container(
                  height: 230,
                  child: Column(
                    children: [
                      lectureDetail.classId == "c2"
                          ? Row(
                              children: [
                                Expanded(child: SizedBox()),
                                Text(
                                  "마감임박!!",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          : Text(""),
                      SizedBox(height: 10),
                      Image.network(lectureDetail.photos[0]),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      icon: Icon(
        Icons.location_on,
        size: 50,
        color: Theme.of(context).focusColor,
      ),
    ),
  );
}

Widget _buildsliderWidget(BuildContext context, List<String> imagePath) {
  return Container(
      child: Stack(
    children: [
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          enableInfiniteScroll: true, //계속 돌아감
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          height: MediaQuery.of(context).size.width,
          initialPage: 0,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
        ),
        items: imagePath.map((img) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              img,
              fit: BoxFit.fitWidth,
            ),
          );
        }).toList(),
      ),
    ],
  ));
}
