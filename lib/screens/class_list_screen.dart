import 'package:demo_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/appbar.dart';
import 'class_list_search_screen.dart';

class ClassListScreen extends StatefulWidget {
  static const routeName = '/class-list';

  @override
  State<ClassListScreen> createState() => _ClassListScreenState();
}

class _ClassListScreenState extends State<ClassListScreen> {
  List<String> lectureIdList = [
    'c1',
    'c2',
    'c1',
    'c2',
  ];

  List<String> adPhotoList = [
    'assets/images/adphoto1.png',
    'assets/images/adphoto2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarList(context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 5,
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
                  Container(
                    width: 300,
                    height: 130,
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
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth,
                      ),
                      _buildLocationIcon(context, 40, 100, lectureIdList[0]),
                      _buildLocationIcon(context, 200, 200, lectureIdList[1]),
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

Widget _buildLocationIcon(
    BuildContext context, double right, double bottom, String classId) {
  return Positioned(
    right: right,
    bottom: bottom,
    child: IconButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          DetailScreen.routeName,
          arguments: classId,
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
          height: MediaQuery.of(context).size.width,
          initialPage: 0,
          enableInfiniteScroll: false,
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
