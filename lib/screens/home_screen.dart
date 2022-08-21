import 'package:demo_app/screens/class_add_screen.dart';
import 'package:demo_app/screens/class_list_screen.dart';
import 'package:demo_app/screens/my_page/my_page_screen.dart';
import 'package:demo_app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: appBarHome(context),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildButton(
                    context,
                    '강좌 찾기',
                    Icons.search,
                    ClassListScreen.routeName,
                  ),
                  _buildButton(
                    context,
                    '강좌 등록',
                    Icons.post_add,
                    ClassAddScreen.routeName,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildButton(
                    context,
                    '내 정보',
                    Icons.person,
                    MyPageScreen.routeName,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildButton(
    BuildContext context, String title, IconData icon, String routeName) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(routeName);
    },
    child: Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).hoverColor,
        // gradient: LinearGradient(
        //   colors: [
        //     Colors.pink,
        //     Colors.indigo,
        //   ],
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              // color: Theme.of(context).focusColor,
              color: Color(0xff684f32),
              fontSize: 45,
              fontFamily: 'Dongle',
            ),
          ),
          Icon(
            icon,
            size: 40,
            color: Color(0xff684f32),
          ),
        ],
      ),
    ),
  );
}
