import 'dart:convert';

import 'package:demo_app/models/open_list_item.dart';
import 'package:demo_app/providers/lecture_details.dart';
import 'package:demo_app/screens/class_add_screen.dart';
import 'package:demo_app/screens/class_list_screen.dart';
import 'package:demo_app/screens/class_list_search_screen.dart';
import 'package:demo_app/screens/detail_screen.dart';
import 'package:demo_app/screens/home_screen.dart';
import 'package:demo_app/screens/my_page/like_list_screen.dart';
import 'package:demo_app/screens/my_page/my_page_screen.dart';
import 'package:demo_app/screens/my_page/open_list_screen.dart';
import 'package:demo_app/screens/my_page/register_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

void main() async {
  await Future.delayed(Duration(microseconds: 1500));
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LectureDetails>(
          create: (context) => LectureDetails(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'demo',
        theme: ThemeData(
          // primaryColor: Colors.pink[100],
          primaryColor: Color(0xfff5c176),
          hoverColor: Color(0xffffe9b1), //버튼 컬러
          focusColor: Color(0xff000000), //버튼 글자 색
          // canvasColor: Color(0xff262625),
          canvasColor: Color(0xfffffae7),
          primaryTextTheme: TextTheme(
            headline6: TextStyle(color: Colors.black),
          ),
          // fontFamily: 'Dongle',
        ),
        // home: Test(),
        home: HomeScreen(),
        routes: {
          ClassListScreen.routeName: (ctx) => ClassListScreen(),
          ClassListSearchScreen.routeName: (ctx) => ClassListSearchScreen(),
          ClassAddScreen.routeName: (ctx) => ClassAddScreen(),
          MyPageScreen.routeName: (ctx) => MyPageScreen(),
          OpenListScreen.routeName: (ctx) => OpenListScreen(),
          RegisterListScreen.routeName: (ctx) => RegisterListScreen(),
          LikeListScreen.routeName: (ctx) => LikeListScreen(),
          DetailScreen.routeName: (ctx) => DetailScreen(),
        },
      ),
    );
  }
}

// void createData() {
//   final usercol =
//       FirebaseFirestore.instance.collection("users").doc("userkey1");
//   usercol.set({
//     "username": "abc",
//     "age": 5,
//   });
// }
