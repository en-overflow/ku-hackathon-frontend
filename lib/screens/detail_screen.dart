import 'dart:convert';

import 'package:demo_app/models/lecture_detail.dart';
import 'package:demo_app/providers/lecture_details.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../widgets/appbar.dart';

// Future<LectureDetail> fetchClass() async {
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
//   var response = await http.get(url);

//   if (response.statusCode == 200) {
//     //ok
//     print(json.decode(response.body));
//     return LectureDetail.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('실패ㅠㅠ');
//   }
// }

class DetailScreen extends StatefulWidget {
  static const routeName = '/detail';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // bool isRegister = false;
  // void toggleIsRegister() {
  //   setState(() {
  //     isRegister = !isRegister;
  //   });
  // }

  // Future<LectureDetail>? futureLectureDetail;
  // @override
  // void initState() {
  //   super.initState();
  //   futureLectureDetail = fetchClass();
  // }

  @override
  Widget build(BuildContext context) {
    final classId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedLecture = context
        .watch<LectureDetails>()
        .state
        .lectureDetails
        .firstWhere((lectureDetail) => lectureDetail.classId == classId);

    return Scaffold(
      appBar: appBarHome(context),
      body: buildBody(context, selectedLecture),
      bottomNavigationBar: _bottomBarWidget(context, selectedLecture),
    );
  }
}

Container buildBody(BuildContext context, LectureDetail selectedLecture) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.white,
    padding: EdgeInsets.only(
      top: 20,
      bottom: 10,
    ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: _buildsliderWidget(
              context,
              selectedLecture.photos,
            ),
          ),
          contentDetail(context, selectedLecture),
        ],
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
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          );
        }).toList(),
      ),
    ],
  ));
}

Widget contentDetail(BuildContext context, LectureDetail lectureDetail) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15),
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 20),
        Text(
          lectureDetail.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        Divider(thickness: 3),
        SizedBox(height: 10),
        Text(
          lectureDetail.time,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        SizedBox(height: 15),
        Text(
          '${lectureDetail.totalCount} 명',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        Divider(thickness: 2),
        SizedBox(height: 15),
        Text(
          lectureDetail.description,
          style: TextStyle(
            fontSize: 30,
            height: 1.5,
          ),
        ),
        SizedBox(height: 20),
        Divider(thickness: 2),
        Row(
          children: [
            Image.asset(
              lectureDetail.instructorPhoto,
              width: 120,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '방장 이름 : \n${lectureDetail.instructorName} \n방장 번호 : \n${lectureDetail.instructorPhone}',
                    style: TextStyle(
                      fontSize: 30,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _bottomBarWidget(
  BuildContext context,
  LectureDetail lectureDetail,
) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          width: 1,
          color: Theme.of(context).dividerColor,
        ),
      ),
      color: Theme.of(context).primaryColor,
    ),
    width: MediaQuery.of(context).size.width,
    height: 70,
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(seconds: 1),
                content: Text(
                  lectureDetail.like ? "관심목록 제거" : "관심목록 추가!",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            );
            context.read<LectureDetails>().toggleLecture(lectureDetail.classId);
          },
          child: Icon(
            lectureDetail.like ? Icons.favorite : Icons.favorite_border,
            size: 40,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 10),
          width: 1.5,
          height: 40,
          color: Theme.of(context).dividerColor,
        ),
        Text(
          '${lectureDetail.price}원',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  print('tap');
                  await _registerDialog(
                    context,
                    lectureDetail,
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).hoverColor,
                  ),
                  child: Text(
                    // isRegister == true ? "취소하기" : "신청하기",
                    "신청하기",
                    style: TextStyle(
                      // color: isRegister == true ? Colors.red : Colors.black,
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Future<dynamic> _registerDialog(
    BuildContext context, LectureDetail lectureDetail) {
  String resultMoney =
      (int.parse(lectureDetail.userMoney) - int.parse(lectureDetail.price))
          .toString();
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        title: new Text(
          "강좌 제목 \n: ${lectureDetail.title}",
          style: TextStyle(fontSize: 40),
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                thickness: 2,
                color: Theme.of(context).hoverColor,
              ),
              Row(
                children: [
                  Text(
                    "내 지갑 :",
                    style: TextStyle(fontSize: 30),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  Text(
                    "${lectureDetail.userMoney}원",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "강좌 가격 :",
                    style: TextStyle(fontSize: 30),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  Text(
                    "-   ${lectureDetail.price}원",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                color: Theme.of(context).hoverColor,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  Text(
                    "${resultMoney}원",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                TextButton(
                  child: new Text(
                    "결제",
                    style: TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).primaryColor.withRed(100),
                    ),
                  ),
                  onPressed: () async {
                    var data = {"lectureId": 7, "studentId": 5};
                    var body = json.encode(data);
                    final url = Uri.parse(
                        'http://3.34.130.105:3000/api/lecture/register');
                    http.Response _res = await http.post(
                      url,
                      headers: {"Content-Type": "application/json"},
                      body: body,
                    );
                    print(_res.statusCode);
                    print(_res.body);
                    Navigator.of(context)
                        .popUntil(ModalRoute.withName('/class-list'));
                  },
                ),
                Expanded(child: SizedBox()),
                TextButton(
                  child: new Text(
                    "취소",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
