import 'dart:convert';

import 'package:demo_app/models/user.dart';
import 'package:demo_app/screens/my_page/like_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import '../../providers/lecture_details.dart';
import '../../widgets/appbar.dart';
import 'open_list_screen.dart';
import 'register_list_screen.dart';

Future<User> fetchUser() async {
  final url = Uri.parse('http://3.34.130.105:3000/api/user/5');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    //ok
    print(json.decode(response.body));
    return User.fromJson(json.decode(response.body));
  } else {
    throw Exception('실패ㅠㅠ');
  }
}

class MyPageScreen extends StatefulWidget {
  static const routeName = '/my-page';

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  Future<User>? futureUser;
  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(context),
      body: Center(
        child: FutureBuilder<User>(
          future: futureUser,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return buildListview(context, snapshot);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}에러!!");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Container buildListview(BuildContext context, snapshot) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: ListView(
        children: <Widget>[
          Container(
            color: Theme.of(context).hoverColor,
            padding: EdgeInsets.all(13),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/profile1.png'),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "최봉남",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "서울시 영등포구",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 20),
                Divider(thickness: 3),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildIconButton(Icons.receipt_sharp, '방 개설\n목록', context,
                        OpenListScreen.routeName),
                    _buildIconButton(Icons.shopping_bag, '방 신청 \n목록', context,
                        RegisterListScreen.routeName),
                    _buildIconButton(Icons.favorite, '찜하기\n', context,
                        LikeListScreen.routeName),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(
              top: 5,
              bottom: 10,
              left: 15,
              right: 15,
            ),
            child: Row(
              children: [
                Text(
                  '보유 포인트',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "${snapshot.data!.point} 원",
                  // "원",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(
              top: 5,
              bottom: 10,
              left: 15,
              right: 15,
            ),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '회원정보 수정',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).hoverColor,
                    onPrimary: Colors.black,
                  ),
                ),
                Expanded(child: SizedBox()),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '충전',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).hoverColor,
                    onPrimary: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildIconButton(
    IconData icon, String iconText, BuildContext context, String routeName) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Icon(
          icon,
          color: Colors.pink,
          size: 50,
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(20),
          primary: Colors.pink.withOpacity(0.2), // <-- Button color
          onPrimary: Colors.red, // <-- Splash color
          elevation: 0,
        ),
      ),
      SizedBox(height: 10),
      Text(
        iconText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 10),
    ],
  );
}
