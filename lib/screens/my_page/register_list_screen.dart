// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/register_list_item.dart';
import '../../widgets/appbar.dart';

Future<List<RegisterListItem>> fetchRegisterListItem(http.Client client) async {
  final url = Uri.parse('http://52.79.133.11/api/user/register/3');
  final response = await client.get(url);
  // final response  = {
  // "body":'{"image":"url"}'
  // };
  print(response.body);
  // return [];
  // compute 함수를 사용하여 parseRegisters를 별도 isolate에서 수행합니다.
  return compute(parseRegisters, response.body);
}

// 응답 결과를 List<Photo>로 변환하는 함수.
List<RegisterListItem> parseRegisters(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed
      .map<RegisterListItem>((json) => RegisterListItem.fromJson(json))
      .toList();
}

// Future<List<RegisterListItem>> fetchRegisterListItem() async {
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
//   var response = await http.get(url);

//   if (response.statusCode == 200) {
//     //ok
//     print(json.decode(response.body));
//     return parseRegisters(response.body);
//   } else {
//     throw Exception('실패ㅠㅠ');
//   }
// }

class RegisterListScreen extends StatelessWidget {
  static const routeName = '/register-list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDetail(context),
      body: FutureBuilder<List<RegisterListItem>>(
        future: fetchRegisterListItem(http.Client()),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return buildRegisterList(registers: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}에러!!");
          }
          return CircularProgressIndicator();
        }),
      ),
    );
  }
}

class buildRegisterList extends StatelessWidget {
  final List<RegisterListItem> registers;
  const buildRegisterList({
    Key? key,
    required this.registers,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: registers.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.all(Radius.circular(5.0)),
                //   child: Row(
                //     children: [
                //       Image.network(
                //         registers[index].photos[0],
                //         height: 110,
                //         width: 110,
                //         fit: BoxFit.cover,
                //       ),
                //     ],
                //   ),
                // ),
                Expanded(
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          registers[index].title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 35),
                        ),
                        // Container(
                        //   child: Icon(
                        //     registers[index].like
                        //         ? Icons.favorite
                        //         : Icons.favorite_border,
                        //     size: 40,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                (registers[index].status.compareTo("pending") == 0)
                    ? Text("모집중")
                    : (registers[index].status.compareTo("full") == 0)
                        ? Text("모집완료")
                        : Text("종료")
              ],
            ),
          ),
        );
      },
    );
  }
}
