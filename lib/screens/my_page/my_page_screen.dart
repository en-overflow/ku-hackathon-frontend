import 'package:demo_app/screens/my_page/like_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../dummy_data.dart';
import '../../providers/lecture_details.dart';
import '../../widgets/appbar.dart';

class MyPageScreen extends StatelessWidget {
  static const routeName = '/my-page';
  final user = DUMMY_USER[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDetail(context),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 10),
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
                        backgroundImage:
                            AssetImage('assets/images/profile1.png'),
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
                          LikeListScreen.routeName),
                      _buildIconButton(Icons.shopping_bag, '방 신청 \n목록', context,
                          LikeListScreen.routeName),
                      _buildIconButton(Icons.favorite, '찜하기\n', context,
                          LikeListScreen.routeName),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  '보유 포인트',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  '${user.money}원',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
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
            )

            // Container(
            //   color: Theme.of(context).hoverColor,
            //   child: Column(
            //     children: <Widget>[
            //       _buildMenuRow(null, '나의활동'),
            //       _buildMenuRow(Icons.location_on_outlined, "내 동네 설정"),
            //       _buildMenuRow(Icons.location_searching_outlined, "동네 인증하기"),
            //       _buildMenuRow(Icons.bookmark_outline_sharp, "키워드 알림"),
            //       _buildMenuRow(Icons.apps_rounded, "모아보기"),
            //       _buildMenuRow(Icons.menu_book, "당근가계부"),
            //       _buildMenuRow(Icons.display_settings_rounded, "관심 카테고리 설정"),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

Widget _buildMenuRow(IconData? icon, String text) {
  return Container(
    height: 45,
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        if (icon != null) Icon(icon),
        SizedBox(width: 10),
        icon != null
            ? Text(text)
            : Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
      ],
    ),
  );
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
