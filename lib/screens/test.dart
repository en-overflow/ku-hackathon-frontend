// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import '../models/class_test.dart';

// Future<Class> fetchClass() async {
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
//   var response = await http.get(url);

//   if (response.statusCode == 200) {
//     //ok
//     print(json.decode(response.body));
//     return Class.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('실패ㅠㅠ');
//   }
// }

// class Test extends StatefulWidget {
//   Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   Future<Class>? c;
//   @override
//   void initState() {
//     super.initState();
//     c = fetchClass();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: FutureBuilder<Class>(
//           //통신데이터 가져오기
//           future: c,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return buildColumn(snapshot);
//             } else if (snapshot.hasError) {
//               return Text("${snapshot.error}에러!!");
//             }
//             return CircularProgressIndicator();
//           },
//         ),
//       ),
//     );
//   }
// }

// Widget buildColumn(snapshot) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Text('userId:' + snapshot.data!.userId.toString(),
//           style: TextStyle(fontSize: 20)),
//       Text('id:' + snapshot.data!.id.toString(),
//           style: TextStyle(fontSize: 20)),
//       Text('title:' + snapshot.data!.title.toString(),
//           style: TextStyle(fontSize: 20)),
//       Text('computed:' + snapshot.data!.completed.toString(),
//           style: TextStyle(fontSize: 20)),
//       Image.asset(snapshot.data!.imagePath.toString())
//     ],
//   );
// }
